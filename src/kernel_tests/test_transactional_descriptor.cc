/* -*- mode: C++; c-basic-offset: 4; indent-tabs-mode: nil -*- */
// vim: ft=cpp:expandtab:ts=8:sw=4:softtabstop=4:
#ident "$Id$"
/*
COPYING CONDITIONS NOTICE:

  This program is free software; you can redistribute it and/or modify
  it under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation, and provided that the
  following conditions are met:

      * Redistributions of source code must retain this COPYING
        CONDITIONS NOTICE, the COPYRIGHT NOTICE (below), the
        DISCLAIMER (below), the UNIVERSITY PATENT NOTICE (below), the
        PATENT MARKING NOTICE (below), and the PATENT RIGHTS
        GRANT (below).

      * Redistributions in binary form must reproduce this COPYING
        CONDITIONS NOTICE, the COPYRIGHT NOTICE (below), the
        DISCLAIMER (below), the UNIVERSITY PATENT NOTICE (below), the
        PATENT MARKING NOTICE (below), and the PATENT RIGHTS
        GRANT (below) in the documentation and/or other materials
        provided with the distribution.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
  02110-1301, USA.

COPYRIGHT NOTICE:

  TokuDB, Tokutek Fractal Tree Indexing Library.
  Copyright (C) 2007-2013 Tokutek, Inc.

DISCLAIMER:

  This program is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  General Public License for more details.

UNIVERSITY PATENT NOTICE:

  The technology is licensed by the Massachusetts Institute of
  Technology, Rutgers State University of New Jersey, and the Research
  Foundation of State University of New York at Stony Brook under
  United States of America Serial No. 11/760379 and to the patents
  and/or patent applications resulting from it.

PATENT MARKING NOTICE:

  This software is covered by US Patent No. 8,185,551.
  This software is covered by US Patent No. 8,489,638.

PATENT RIGHTS GRANT:

  "THIS IMPLEMENTATION" means the copyrightable works distributed by
  Tokutek as part of the Fractal Tree project.

  "PATENT CLAIMS" means the claims of patents that are owned or
  licensable by Tokutek, both currently or in the future; and that in
  the absence of this license would be infringed by THIS
  IMPLEMENTATION or by using or running THIS IMPLEMENTATION.

  "PATENT CHALLENGE" shall mean a challenge to the validity,
  patentability, enforceability and/or non-infringement of any of the
  PATENT CLAIMS or otherwise opposing any of the PATENT CLAIMS.

  Tokutek hereby grants to you, for the term and geographical scope of
  the PATENT CLAIMS, a non-exclusive, no-charge, royalty-free,
  irrevocable (except as stated in this section) patent license to
  make, have made, use, offer to sell, sell, import, transfer, and
  otherwise run, modify, and propagate the contents of THIS
  IMPLEMENTATION, where such license applies only to the PATENT
  CLAIMS.  This grant does not include claims that would be infringed
  only as a consequence of further modifications of THIS
  IMPLEMENTATION.  If you or your agent or licensee institute or order
  or agree to the institution of patent litigation against any entity
  (including a cross-claim or counterclaim in a lawsuit) alleging that
  THIS IMPLEMENTATION constitutes direct or contributory patent
  infringement, or inducement of patent infringement, then any rights
  granted to you under this License shall terminate as of the date
  such litigation is filed.  If you or your agent or exclusive
  licensee institute or order or agree to the institution of a PATENT
  CHALLENGE, then Tokutek may terminate any rights granted to you
  under this License.
*/

#ident "Copyright (c) 2007-2013 Tokutek Inc.  All rights reserved."
#ident "The technology is licensed by the Massachusetts Institute of Technology, Rutgers State University of New Jersey, and the Research Foundation of State University of New York at Stony Brook under United States of America Serial No. 11/760379 and to the patents and/or patent applications resulting from it."
// test that an update calls back into the update function

#include "test.h"

static const int envflags = DB_INIT_MPOOL|DB_CREATE|DB_THREAD |DB_INIT_LOCK|DB_INIT_LOG|DB_INIT_TXN|DB_PRIVATE;

static DB_ENV *env;


static void setup (void) {
    toku_os_recursive_delete(TOKU_TEST_FILENAME);
    { int chk_r = toku_os_mkdir(TOKU_TEST_FILENAME, S_IRWXU+S_IRWXG+S_IRWXO); CKERR(chk_r); }
    { int chk_r = db_env_create(&env, 0); CKERR(chk_r); }
    env->set_errfile(env, stderr);
    { int chk_r = env->open(env, TOKU_TEST_FILENAME, envflags, S_IRWXU+S_IRWXG+S_IRWXO); CKERR(chk_r); }
}

static void cleanup (void) {
    { int chk_r = env->close(env, 0); CKERR(chk_r); }
}

static uint32_t four_byte_desc = 101;
static uint64_t eight_byte_desc = 10101;


static void assert_desc_four (DB* db) {
    assert(db->descriptor->dbt.size == sizeof(four_byte_desc));
    assert(*(uint32_t *)(db->descriptor->dbt.data) == four_byte_desc);
}
static void assert_desc_eight (DB* db) {
    assert(db->descriptor->dbt.size == sizeof(eight_byte_desc));
    assert(*(uint32_t *)(db->descriptor->dbt.data) == eight_byte_desc);
}

static void run_test(void) {
    DB* db = NULL;
    DB* db2 = NULL;
    
    DBT orig_desc;
    memset(&orig_desc, 0, sizeof(orig_desc));
    orig_desc.size = sizeof(four_byte_desc);
    orig_desc.data = &four_byte_desc;
    // verify we can only set a descriptor with version 1
    IN_TXN_COMMIT(env, NULL, txn_create, 0, {
            { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
            assert(db->descriptor == NULL);
            { int chk_r = db->open(db, txn_create, "foo.db", NULL, DB_BTREE, DB_CREATE, 0666); CKERR(chk_r); }
            { int chk_r = db->change_descriptor(db, txn_create, &orig_desc, 0); CKERR(chk_r); }
            assert_desc_four(db);
        });

    { int chk_r = db_create(&db2, env, 0); CKERR(chk_r); }
    { int chk_r = db2->open(db2, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_four(db2);
    { int chk_r = db2->close(db2, 0); CKERR(chk_r); }
    db2 = NULL;

    { int chk_r = db->close(db, 0); CKERR(chk_r); }
    db = NULL;

    // verify that after closing and reopening db gets the same descriptor
    { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
    { int chk_r = db->open(db, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_four(db);

    /********************************************************************/
    
    // now lets test change_descriptor
    DBT change_descriptor;
    memset(&change_descriptor, 0, sizeof(change_descriptor));
    change_descriptor.size = sizeof(eight_byte_desc);
    change_descriptor.data = &eight_byte_desc;

    // test that simple abort works
    IN_TXN_ABORT(env, NULL, txn_change, 0, {
            { int chk_r = db->change_descriptor(db, txn_change, &change_descriptor, 0); CKERR(chk_r); }
        assert_desc_eight(db);
        });
    assert_desc_four(db);
    
    // test that close/reopen gets the right descriptor
    { int chk_r = db->close(db, 0); CKERR(chk_r); }
    db = NULL;
    { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
    { int chk_r = db->open(db, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_four(db);
    { int chk_r = db_create(&db2, env, 0); CKERR(chk_r); }
    { int chk_r = db2->open(db2, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_four(db2);
    { int chk_r = db2->close(db2, 0); CKERR(chk_r); }
    db2 = NULL;

    // test that simple commit works
    IN_TXN_COMMIT(env, NULL, txn_change, 0, {
            { int chk_r = db->change_descriptor(db, txn_change, &change_descriptor, 0); CKERR(chk_r); }
        assert_desc_eight(db);
        });
    assert_desc_eight(db);
    
    // test that close/reopen gets the right descriptor
    { int chk_r = db->close(db, 0); CKERR(chk_r); }
    db = NULL;
    { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
    { int chk_r = db->open(db, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_eight(db);
    { int chk_r = db_create(&db2, env, 0); CKERR(chk_r); }
    { int chk_r = db2->open(db2, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_eight(db2);
    { int chk_r = db2->close(db2, 0); CKERR(chk_r); }
    db2 = NULL;


    change_descriptor.size = sizeof(four_byte_desc);
    change_descriptor.data = &four_byte_desc;
    // test that close then abort works
    IN_TXN_ABORT(env, NULL, txn_change, 0, {
            { int chk_r = db->change_descriptor(db, txn_change, &change_descriptor, 0); CKERR(chk_r); }
            { int chk_r = db->close(db, 0); CKERR(chk_r); }
        db = NULL;
        { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
        { int chk_r = db->open(db, txn_change, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
        assert_desc_four(db);
        { int chk_r = db->close(db, 0); CKERR(chk_r); }
        db = NULL;
        });
    { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
    { int chk_r = db->open(db, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_eight(db);
    { int chk_r = db_create(&db2, env, 0); CKERR(chk_r); }
    { int chk_r = db2->open(db2, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_eight(db2);
    { int chk_r = db2->close(db2, 0); CKERR(chk_r); }
    db2 = NULL;

    // test that close then commit works
    IN_TXN_COMMIT(env, NULL, txn_change, 0, {
            { int chk_r = db->change_descriptor(db, txn_change, &change_descriptor, 0); CKERR(chk_r); }
            { int chk_r = db->close(db, 0); CKERR(chk_r); }
        db = NULL;
        { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
        { int chk_r = db->open(db, txn_change, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
        assert_desc_four(db);
        { int chk_r = db->close(db, 0); CKERR(chk_r); }
        db = NULL;
        });
    { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
    { int chk_r = db->open(db, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_four(db);
    { int chk_r = db_create(&db2, env, 0); CKERR(chk_r); }
    { int chk_r = db2->open(db2, NULL, "foo.db", NULL, DB_BTREE, 0, 0666); CKERR(chk_r); }
    assert_desc_four(db2);
    { int chk_r = db2->close(db2, 0); CKERR(chk_r); }
    db2 = NULL;
    { int chk_r = db->close(db, 0); CKERR(chk_r); }
    db = NULL;

    IN_TXN_ABORT(env, NULL, txn_create, 0, {
            { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
            assert(db->descriptor == NULL);
            { int chk_r = db->open(db, txn_create, "bar.db", NULL, DB_BTREE, DB_CREATE, 0666); CKERR(chk_r); }
            { int chk_r = db->change_descriptor(db, txn_create, &change_descriptor, 0); CKERR(chk_r); }
            // test some error cases
            IN_TXN_COMMIT(env, txn_create, txn_create2, 0, {
                    { int chk_r = db->change_descriptor(db, txn_create, &change_descriptor, 0); CKERR2(chk_r, EINVAL); }
                });
            assert_desc_four(db);
            { int chk_r = db->close(db, 0); CKERR(chk_r); }
            db = NULL;
        });
    IN_TXN_COMMIT(env, NULL, txn_create, 0, {
            { int chk_r = db_create(&db, env, 0); CKERR(chk_r); }
            assert(db->descriptor == NULL);
            { int chk_r = db->open(db, txn_create, "bar.db", NULL, DB_BTREE, DB_CREATE, 0666); CKERR(chk_r); }
            { int chk_r = db->change_descriptor(db, txn_create, &change_descriptor, 0); CKERR(chk_r); }
            assert_desc_four(db);
        });
    assert_desc_four(db);

    { int chk_r = db->close(db, 0); CKERR(chk_r); }
    db = NULL;
}
extern "C" int test_test_transactional_descriptor(void);
int test_test_transactional_descriptor(void) {
    pre_setup();
    setup();
    run_test();
    cleanup();
    post_teardown();
    return 0;

}
