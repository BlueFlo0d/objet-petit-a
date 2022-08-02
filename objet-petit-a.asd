(asdf:defsystem objet-petit-a
  :depends-on (:magicl/ext-lapack :dynamic-mixins :serapeum :metabang-bind)
  :components ((:file "packages")
               (:file "common" :depends-on ("packages"))
               (:file "optimization" :depends-on ("common"))
               (:file "stochastic-approximation" :depends-on ("common" "optimization"))
               (:file "control" :depends-on ("common"))
               (:file "dwim" :depends-on ("common" "control"))))
