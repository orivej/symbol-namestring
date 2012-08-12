(in-package #:symbol-namestring)

(defreadtable symbol-namestring
  (:merge :current)
  (:dispatch-macro-char #\# #\" #'symbol-namestring-reader))

(defun install-symbol-namestring-reader ()
  (merge-readtables-into :current 'symbol-namestring))

(defun symbol-namestring (string)
  "Derive a string suitable for #'INTERN from a string suitable to be read."
  (let ((*readtable* (find-readtable 'symbol-namestring)))
    (read-from-string (concatenate 'string "#\"" string "\""))))
