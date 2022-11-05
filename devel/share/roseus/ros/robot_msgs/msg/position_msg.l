;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::position_msg)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'position_msg (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::POSITION_MSG")
  (make-package "ROBOT_MSGS::POSITION_MSG"))

(in-package "ROS")
;;//! \htmlinclude position_msg.msg.html


(defclass robot_msgs::position_msg
  :super ros::object
  :slots (_x_axis _y_axis _z_orin ))

(defmethod robot_msgs::position_msg
  (:init
   (&key
    ((:x_axis __x_axis) 0.0)
    ((:y_axis __y_axis) 0.0)
    ((:z_orin __z_orin) 0.0)
    )
   (send-super :init)
   (setq _x_axis (float __x_axis))
   (setq _y_axis (float __y_axis))
   (setq _z_orin (float __z_orin))
   self)
  (:x_axis
   (&optional __x_axis)
   (if __x_axis (setq _x_axis __x_axis)) _x_axis)
  (:y_axis
   (&optional __y_axis)
   (if __y_axis (setq _y_axis __y_axis)) _y_axis)
  (:z_orin
   (&optional __z_orin)
   (if __z_orin (setq _z_orin __z_orin)) _z_orin)
  (:serialization-length
   ()
   (+
    ;; float64 _x_axis
    8
    ;; float64 _y_axis
    8
    ;; float64 _z_orin
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
     ;; float64 _z_orin
       (sys::poke _z_orin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_axis
     (setq _x_axis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_axis
     (setq _y_axis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_orin
     (setq _z_orin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robot_msgs::position_msg :md5sum-) "9be54f05995ecfa9e936b1300fc170b1")
(setf (get robot_msgs::position_msg :datatype-) "robot_msgs/position_msg")
(setf (get robot_msgs::position_msg :definition-)
      "float64 x_axis
float64 y_axis
float64 z_orin
")



(provide :robot_msgs/position_msg "9be54f05995ecfa9e936b1300fc170b1")


