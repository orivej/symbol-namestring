(in-package #:symbol-namestring)

(defparameter invalid-syntax-error-string
  "Invalid symbol-namestring syntax.")

#+sbcl
(defun symbol-namestring-reader (stream character prefix)
  (declare (ignore prefix))
  (prog1 (sb-impl::read-extended-token stream)
    (unless (char= character (read-char stream))
      (sb-int:simple-reader-error stream invalid-syntax-error-string))))

#+franz-inc
(defun symbol-namestring-reader (stream character prefix)
  (declare (ignore prefix))
  (prog1 (excl::read-extended-token stream)
    (unless (char= character (read-char stream))
      (excl::internal-reader-error stream invalid-syntax-error-string))))

#-(or sbcl franz-inc)
(error "SYMBOL-NAMESTRING-READER not implemented on ~A." (lisp-implementation-type))
