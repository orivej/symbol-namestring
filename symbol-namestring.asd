(asdf:defsystem symbol-namestring
  :description "Symbol namestring reader."
  :long-description "Derive a string suitable for INTERN from a string suitable to be read.
See USENET-ARTICLE copied from http://www.xach.com/naggum/articles/3136756949506727@naggum.no.html"
  :author "Erik Naggum"
  :maintainer "Orivej Desh <orivej@gmx.fr>"
  :licence "Public domain with attribution."
  :depends-on (:named-readtables)
  :serial t
  :components ((:file "package")
               (:file "impl")
               (:file "common")))
