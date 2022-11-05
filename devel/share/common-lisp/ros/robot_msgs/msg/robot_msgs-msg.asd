
(cl:in-package :asdf)

(defsystem "robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "position_msg" :depends-on ("_package_position_msg"))
    (:file "_package_position_msg" :depends-on ("_package"))
    (:file "user_control_msg" :depends-on ("_package_user_control_msg"))
    (:file "_package_user_control_msg" :depends-on ("_package"))
  ))