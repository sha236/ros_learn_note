; Auto-generated. Do not edit!


(cl:in-package my_msgs_p-msg)


;//! \htmlinclude position_msgs.msg.html

(cl:defclass <position_msgs> (roslisp-msg-protocol:ros-message)
  ((x_axis
    :reader x_axis
    :initarg :x_axis
    :type cl:float
    :initform 0.0)
   (y_axis
    :reader y_axis
    :initarg :y_axis
    :type cl:float
    :initform 0.0))
)

(cl:defclass position_msgs (<position_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msgs_p-msg:<position_msgs> is deprecated: use my_msgs_p-msg:position_msgs instead.")))

(cl:ensure-generic-function 'x_axis-val :lambda-list '(m))
(cl:defmethod x_axis-val ((m <position_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs_p-msg:x_axis-val is deprecated.  Use my_msgs_p-msg:x_axis instead.")
  (x_axis m))

(cl:ensure-generic-function 'y_axis-val :lambda-list '(m))
(cl:defmethod y_axis-val ((m <position_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs_p-msg:y_axis-val is deprecated.  Use my_msgs_p-msg:y_axis instead.")
  (y_axis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position_msgs>) ostream)
  "Serializes a message object of type '<position_msgs>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position_msgs>) istream)
  "Deserializes a message object of type '<position_msgs>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position_msgs>)))
  "Returns string type for a message object of type '<position_msgs>"
  "my_msgs_p/position_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position_msgs)))
  "Returns string type for a message object of type 'position_msgs"
  "my_msgs_p/position_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position_msgs>)))
  "Returns md5sum for a message object of type '<position_msgs>"
  "88341bb7295f2b6a620efccae1466ba4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position_msgs)))
  "Returns md5sum for a message object of type 'position_msgs"
  "88341bb7295f2b6a620efccae1466ba4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position_msgs>)))
  "Returns full string definition for message of type '<position_msgs>"
  (cl:format cl:nil "float64 x_axis~%float64 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position_msgs)))
  "Returns full string definition for message of type 'position_msgs"
  (cl:format cl:nil "float64 x_axis~%float64 y_axis~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position_msgs>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'position_msgs
    (cl:cons ':x_axis (x_axis msg))
    (cl:cons ':y_axis (y_axis msg))
))
