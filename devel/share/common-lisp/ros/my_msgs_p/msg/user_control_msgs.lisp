; Auto-generated. Do not edit!


(cl:in-package my_msgs_p-msg)


;//! \htmlinclude user_control_msgs.msg.html

(cl:defclass <user_control_msgs> (roslisp-msg-protocol:ros-message)
  ((need_stop
    :reader need_stop
    :initarg :need_stop
    :type cl:integer
    :initform 0))
)

(cl:defclass user_control_msgs (<user_control_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_control_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_control_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msgs_p-msg:<user_control_msgs> is deprecated: use my_msgs_p-msg:user_control_msgs instead.")))

(cl:ensure-generic-function 'need_stop-val :lambda-list '(m))
(cl:defmethod need_stop-val ((m <user_control_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msgs_p-msg:need_stop-val is deprecated.  Use my_msgs_p-msg:need_stop instead.")
  (need_stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_control_msgs>) ostream)
  "Serializes a message object of type '<user_control_msgs>"
  (cl:let* ((signed (cl:slot-value msg 'need_stop)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_control_msgs>) istream)
  "Deserializes a message object of type '<user_control_msgs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'need_stop) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_control_msgs>)))
  "Returns string type for a message object of type '<user_control_msgs>"
  "my_msgs_p/user_control_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_control_msgs)))
  "Returns string type for a message object of type 'user_control_msgs"
  "my_msgs_p/user_control_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_control_msgs>)))
  "Returns md5sum for a message object of type '<user_control_msgs>"
  "8171a97e85519dd4fe2e897b160f54e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_control_msgs)))
  "Returns md5sum for a message object of type 'user_control_msgs"
  "8171a97e85519dd4fe2e897b160f54e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_control_msgs>)))
  "Returns full string definition for message of type '<user_control_msgs>"
  (cl:format cl:nil "int64 need_stop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_control_msgs)))
  "Returns full string definition for message of type 'user_control_msgs"
  (cl:format cl:nil "int64 need_stop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_control_msgs>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_control_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'user_control_msgs
    (cl:cons ':need_stop (need_stop msg))
))
