; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude user_control_msg.msg.html

(cl:defclass <user_control_msg> (roslisp-msg-protocol:ros-message)
  ((need_stop
    :reader need_stop
    :initarg :need_stop
    :type cl:integer
    :initform 0)
   (serial_port_status
    :reader serial_port_status
    :initarg :serial_port_status
    :type cl:integer
    :initform 0))
)

(cl:defclass user_control_msg (<user_control_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_control_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_control_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<user_control_msg> is deprecated: use robot_msgs-msg:user_control_msg instead.")))

(cl:ensure-generic-function 'need_stop-val :lambda-list '(m))
(cl:defmethod need_stop-val ((m <user_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:need_stop-val is deprecated.  Use robot_msgs-msg:need_stop instead.")
  (need_stop m))

(cl:ensure-generic-function 'serial_port_status-val :lambda-list '(m))
(cl:defmethod serial_port_status-val ((m <user_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:serial_port_status-val is deprecated.  Use robot_msgs-msg:serial_port_status instead.")
  (serial_port_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_control_msg>) ostream)
  "Serializes a message object of type '<user_control_msg>"
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
  (cl:let* ((signed (cl:slot-value msg 'serial_port_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_control_msg>) istream)
  "Deserializes a message object of type '<user_control_msg>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_port_status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_control_msg>)))
  "Returns string type for a message object of type '<user_control_msg>"
  "robot_msgs/user_control_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_control_msg)))
  "Returns string type for a message object of type 'user_control_msg"
  "robot_msgs/user_control_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_control_msg>)))
  "Returns md5sum for a message object of type '<user_control_msg>"
  "2bfc4ee5d247898e4b10bf74cd215fa3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_control_msg)))
  "Returns md5sum for a message object of type 'user_control_msg"
  "2bfc4ee5d247898e4b10bf74cd215fa3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_control_msg>)))
  "Returns full string definition for message of type '<user_control_msg>"
  (cl:format cl:nil "int64 need_stop~%int64 serial_port_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_control_msg)))
  "Returns full string definition for message of type 'user_control_msg"
  (cl:format cl:nil "int64 need_stop~%int64 serial_port_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_control_msg>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_control_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'user_control_msg
    (cl:cons ':need_stop (need_stop msg))
    (cl:cons ':serial_port_status (serial_port_status msg))
))
