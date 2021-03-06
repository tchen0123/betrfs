/* -*- mode: C++; c-basic-offset: 8; indent-tabs-mode: t -*- */
// vim: set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab:


/* DP: "Borrowed" from musl */
/* This file is sorted such that 'errors' which represent exceptional
 * conditions under which a correct program may fail come first, followed
 * by messages that indicate an incorrect program or system failure. The
 * macro E() along with double-inclusion is used to ensure that ordering
 * of the strings remains synchronized. */

E(EILSEQ,       "Illegal byte sequence")
E(EDOM,         "Argument outside domain")
E(ERANGE,       "Result not representable")

E(ENOTTY,       "Not a tty")
E(EACCES,       "Permission denied")
E(EPERM,        "Operation not permitted")
E(ENOENT,       "No such file or directory")
E(ESRCH,        "No such process")
E(EEXIST,       "File exists")

E(EOVERFLOW,    "Value too large for defined data type")
E(ENOSPC,       "No space left on device")
E(ENOMEM,       "Out of memory")

E(EBUSY,        "Device or resource busy")
E(EINTR,        "Interrupted system call")
E(EAGAIN,       "Operation would block")
E(ESPIPE,       "Illegal seek")

E(EXDEV,        "Cross-device link")
E(EROFS,        "Read-only file system")
E(ENOTEMPTY,    "Directory not empty")

E(ECONNRESET,   "Connection reset by peer")
E(ETIMEDOUT,    "Connection timed out")
E(ECONNREFUSED, "Connection refused")
E(EHOSTDOWN,    "Host is down")
E(EHOSTUNREACH, "No route to host")
E(EADDRINUSE,   "Address already in use")

E(EPIPE,        "Broken pipe")
E(EIO,          "I/O error")
E(ENXIO,        "No such device or address")
E(ENOTBLK,      "Block device required")
E(ENODEV,       "No such device")
E(ENOTDIR,      "Not a directory")
E(EISDIR,       "Is a directory")
E(ETXTBSY,      "Text file busy")
E(ENOEXEC,      "Exec format error")

E(EINVAL,       "Invalid argument")

E(E2BIG,        "Argument list too long")
E(ELOOP,        "Too many levels of symbolic links")
E(ENAMETOOLONG, "Filename too long")
E(ENFILE,       "File table overflow")
E(EMFILE,       "Too many open files")
E(EBADF,        "Bad file number")
E(ECHILD,       "No child processes")
E(EFAULT,       "Bad address")
E(EFBIG,        "File too large")
E(EMLINK,       "Too many links")
E(ENOLCK,       "No record locks available")

E(EDEADLK,      "Resource deadlock would occur")
E(ENOSYS,       "Function not supported")
E(ENOMSG,       "No message of desired type")
E(EIDRM,        "Identifier removed")
E(ENOSTR,       "Device not a stream")
E(ENODATA,      "No data available")
E(ETIME,        "Timer expired")
E(ENOSR,        "Out of streams resources")
E(ENOLINK,      "Link has been severed")
E(EPROTO,       "Protocol error")
E(EBADMSG,      "Not a data message")
E(EBADFD,       "File descriptor in bad state")
E(ENOTSOCK,     "Socket operation on non-socket")
E(EDESTADDRREQ, "Destination address required")
E(EMSGSIZE,     "Message too long")
E(EPROTOTYPE,   "Protocol wrong type for socket")
E(ENOPROTOOPT,  "Protocol not available")
E(EPROTONOSUPPORT,"Protocol not supported")
E(ESOCKTNOSUPPORT,"Socket type not supported")
E(EOPNOTSUPP,   "Operation not supported on socket")
E(EPFNOSUPPORT, "Protocol family not supported")
E(EAFNOSUPPORT, "Address family not supported by protocol")
E(EADDRNOTAVAIL,"Cannot assign requested address")
E(ENETDOWN,     "Network is down")
E(ENETUNREACH,  "Network is unreachable")
E(ENETRESET,    "Network dropped connection because of reset")
E(ECONNABORTED, "Software caused connection abort")
E(ENOBUFS,      "No buffer space available")
E(EISCONN,      "Socket is connected")
E(ENOTCONN,     "Socket is not connected")
E(ESHUTDOWN,    "Cannot send after socket shutdown")
E(EALREADY,     "Operation already in progress")
E(EINPROGRESS,  "Operation now in progress")
E(ESTALE,       "Stale NFS file handle")
E(EREMOTEIO,    "Remote I/O error")
E(EDQUOT,       "Quota exceeded")
E(ENOMEDIUM,    "No medium found")
E(EMEDIUMTYPE,  "Wrong medium type")

E(0,            "No error information")
