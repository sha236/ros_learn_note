;; Auto-generated. Do not edit!


(when (boundp 'my_msgs_p::position_msgs)
  (if (not (find-package "MY_MSGS_P"))
    (make-package "MY_MSGS_P"))
  (shadow 'position_msgs (find-package "MY_MSGS_P")))
(unless (find-package "MY_MSGS_P::POSITION_MSGS")
  (make-package "MY_MSGS_P::POSITION_MSGS"))

(in-package "ROS")
;;//! \htmlinclude position_msgs.msg.html


(defclass my_msgs_p::position_msgs
  :super ros::object
  :slots (_x_axis _y_axis ))

(defmethod my_msgs_p::position_msgs
  (:init
   (&key
    ((:x_axis __x_axis) 0.0)
    ((:y_axis __y_axis) 0.0)
    )
   (send-super :init)
   (setq _x_axis (float __x_axis))
   (setq _y_axis (float __y_axis))
   self)
  (:x_axis
   (&optional __x_axis)
   (if __x_axis (setq _x_axis __x_axis)) _x_axis)
  (:y_axis
   (&optional __y_axis)
   (if __y_axis (setq _y_axis __y_axis)) _y_axis)
  (:serialization-length
   ()
   (+
    ;; float64 _x_axis
    8
    ;; float64 _y_axis
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_axis
       (sys::poke _x_axis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_axis
       (sys::poke _y_axis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_axis
     (setq _x_axis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_axis
     (setq _y_axis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get my_msgs_p::position_msgs :md5sum-) "88341bb7295f2b6a620efccae1466ba4")
(setf (get my_msgs_p::position_msgs :datatype-) "my_msgs_p/position_msgs")
(setf (get my_msgs_p::position_msgs :definition-)
      "float64 x_axis
float64 y_axis
")



(provide :my_msgs_p/position_msgs "88341bb7295f2b6a620efccae1466ba4")


