
(cl:in-package :asdf)

(defsystem "my_msgs_p-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mymsg" :depends-on ("_package_mymsg"))
    (:file "_package_mymsg" :depends-on ("_package"))
    (:file "position_msgs" :depends-on ("_package_position_msgs"))
    (:file "_package_position_msgs" :depends-on ("_package"))
    (:file "user_control_msgs" :depends-on ("_package_user_control_msgs"))
    (:file "_package_user_control_msgs" :depends-on ("_package"))
  ))