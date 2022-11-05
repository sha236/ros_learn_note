; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude position_msg.msg.html

(cl:defclass <position_msg> (roslisp-msg-protocol:ros-message)
  ((x_axis
    :reader x_axis
    :initarg :x_axis
    :type cl:float
    :initform 0.0)
   (y_axis
    :reader y_axis
    :initarg :y_axis
    :type cl:float
    :initform 0.0)
   (z_orin
    :reader z_orin
    :initarg :z_orin
    :type cl:float
    :initform 0.0))
)

(cl:defclass position_msg (<position_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<position_msg> is deprecated: use robot_msgs-msg:position_msg instead.")))

(cl:ensure-generic-function 'x_axis-val :lambda-list '(m))
(cl:defmethod x_axis-val ((m <position_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:x_axis-val is deprecated.  Use robot_msgs-msg:x_axis instead.")
  (x_axis m))

(cl:ensure-generic-function 'y_axis-val :lambda-list '(m))
(cl:defmethod y_axis-val ((m <position_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:y_axis-val is deprecated.  Use robot_msgs-msg:y_axis instead.")
  (y_axis m))

(cl:ensure-generic-function 'z_orin-val :lambda-list '(m))
(cl:defmethod z_orin-val ((m <position_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:z_orin-val is deprecated.  Use robot_msgs-msg:z_orin instead.")
  (z_orin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position_msg>) ostream)
  "Serializes a message object of type '<position_msg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_orin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position_msg>) istream)
  "Deserializes a message object of type '<position_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_axis) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_axis) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_orin) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position_msg>)))
  "Returns string type for a message object of type '<position_msg>"
  "robot_msgs/position_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position_msg)))
  "Returns string type for a message object of type 'position_msg"
  "robot_msgs/position_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position_msg>)))
  "Returns md5sum for a message object of type '<position_msg>"
  "9be54f05995ecfa9e936b1300fc170b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position_msg)))
  "Returns md5sum for a message object of type 'position_msg"
  "9be54f05995ecfa9e936b1300fc170b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position_msg>)))
  "Returns full string definition for message of type '<position_msg>"
  (cl:format cl:nil "float64 x_axis~%float64 y_axis~%float64 z_orin~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position_msg)))
  "Returns full string definition for message of type 'position_msg"
  (cl:format cl:nil "float64 x_axis~%float64 y_axis~%float64 z_orin~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position_msg>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'position_msg
    (cl:cons ':x_axis (x_axis msg))
    (cl:cons ':y_axis (y_axis msg))
    (cl:cons ':z_orin (z_orin msg))
))
