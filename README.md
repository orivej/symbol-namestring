Symbol namestring is a string suitable for INTERN, produced from a string suitable to be read.  Originally developed by Erik Naggum; see http://www.xach.com/naggum/articles/3136756949506727@naggum.no.html

Three functions and one named readtable are exported.  SYMBOL-NAMESTRING-READER defines the reader function.  SYMBOL-NAMESTRING names a readtable derived from the current one with the reader dispatching on `#\# #\"`.  It also names a function which accepts a string and reads it in the context of the readtable as `#"string"`.  INSTALL-SYMBOL-NAMESTRING-READER merges the SYMBOL-NAMESTRING readtable into the current one.

The package is implementation dependent.  For the time being it works on SBCL.  It should also work on ACL without modifications when NAMED-READTABLES reinstate their support of ACL.
