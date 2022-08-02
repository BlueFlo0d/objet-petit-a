(in-package #:objet-petit-a)
(defun recipe (mixin-list &rest initargs &key &allow-other-keys)
  (bind (((:values controller-mixins search-mixins)
          (s:partition (a:rcurry #'closer-mop:subclassp 'controller) mixin-list))
         (search-node (apply #'make-instance (apply #'mix search-mixins) :allow-other-keys t initargs))
         (controller (apply #'make-instance (apply #'mix (or controller-mixins '(controller)))
                            :allow-other-keys t :search-node search-node initargs)))
    controller))
