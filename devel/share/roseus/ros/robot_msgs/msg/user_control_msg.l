;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::user_control_msg)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'user_control_msg (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::USER_CONTROL_MSG")
  (make-package "ROBOT_MSGS::USER_CONTROL_MSG"))

(in-package "ROS")
;;//! \htmlinclude user_control_msg.msg.html


(defclass robot_msgs::user_control_msg
  :super ros::object
  :slots (_need_stop ))

(defmethod robot_msgs::user_control_msg
  (:init
   (&key
    ((:need_stop __need_stop) 0)
    )
   (send-super :init)
   (setq _need_stop (round __need_stop))
   self)
  (:need_stop
   (&optional __need_stop)
   (if __need_stop (setq _need_stop __need_stop)) _need_stop)
  (:serialization-length
   ()
   (+
    ;; int64 _need_stop
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _need_stop
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _need_stop (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _need_stop) (= (length (_need_stop . bv)) 2)) ;; bignum
              (write-long (ash (elt (_need_stop . bv) 0) 0) s)
              (write-long (ash (elt (_need_stop . bv) 1) -1) s))
             ((and (class _need_stop) (= (length (_need_stop . bv)) 1)) ;; big1
              (write-long (elt (_need_stop . bv) 0) s)
              (write-long (if (>= _need_stop 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _need_stop s)(write-long (if (>= _need_stop 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _need_stop
#+(or :alpha :irix6 :x86_64)
      (setf _need_stop (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _need_stop (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get robot_msgs::user_control_msg :md5sum-) "8171a97e85519dd4fe2e897b160f54e4")
(setf (get robot_msgs::user_control_msg :datatype-) "robot_msgs/user_control_msg")
(setf (get robot_msgs::user_control_msg :definition-)
      "int64 need_stop
")



(provide :robot_msgs/user_control_msg "8171a97e85519dd4fe2e897b160f54e4")


