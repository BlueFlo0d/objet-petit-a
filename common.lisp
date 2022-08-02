(in-package #:objet-petit-a)
(defmacro defmethod-1 (name (&rest options) (class &rest args) &body body)
  `(let ((class-obj (find-class ',class)))
     (closer-mop:finalize-inheritance class-obj)
     (let ((slot-names (mapcar #'closer-mop:slot-definition-name (closer-mop:class-slots class-obj))))
       (a:when-let (clashes (intersection slot-names ',args))
         (error "Name clashes: ~a." clashes))
       (eval
        `(defmethod ,',name ,@',options ((self ,',class) ,@',args)
           (with-slots ,slot-names self
             ,@',body))))))
(defgeneric run (search-state)
  (:method (self) nil))
(defclass problem ()
  ((parameter :initarg :parameter :accessor parameter)))
(defgeneric cost (problem parameter))
(defgeneric copy (search-state)
  (:method (self) self)
  (:method ((self sequence)) (copy-seq self))
  (:method ((self m:abstract-tensor)) (m:deep-copy-tensor self)))