(defpackage #:objet-petit-a
  (:use #:cl #:dynamic-mixins #:metabang-bind #:iterate)
  (:import-from #:iterate #:iter)
  (:local-nicknames (#:m #:magicl) (#:a #:alexandria) (#:s #:serapeum)
                    (#:p #:lparallel))
  (:export
   #+nil common
   #:defmethod-1 #:problem #:cost #:parameter #:run #:copy
   #+nil optimization
   #:gradient #:gradient-descent #:golden-search #:learning-rate #:momentum
   #:hessian #:newton #:sfn #:damp-hessian #:damp-hessian-si #:delta
   #:metro-hastings #:beta-m #:mutate
   #+nil stochastic-approximation
   #:1spsa #:step-size #:common-random-number #:2spsa #:beta-h
   #+nil control
   #:controller #:eval-cost #:fix-restart #:luby-restart #:search-node
   #:found-promising-state #:state-not-promising #:continue-from-best
   #+nil dwim
   #:recipe))
