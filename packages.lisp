(defpackage #:objet-petit-a
  (:use #:cl #:dynamic-mixins #:metabang-bind #:iterate)
  (:import-from #:iterate #:iter)
  (:local-nicknames (#:m #:magicl) (#:a #:alexandria) (#:s #:serapeum))
  (:export
   #+nil common
   #:defmethod-1 #:problem #:cost #:parameter #:run #:copy
   #+nil optimization
   #:gradient #:gradient-descent #:learning-rate
   #:hessian #:newton #:sfn #:damp-hessian #:damp-hessian-si #:delta
   #:metro-hastings #:beta-m #:mutator
   #+nil stochastic-approximation
   #:1spsa #:step-size #:common-random-number #:2spsa #:beta-h
   #+nil control
   #:controller #:eval-cost #:fix-restart #:luby-restart #:found-promising-state #:search-node
   #+nil dwim
   #:recipe))
