from email.header import Header
import cv2  
import numpy
import rospy
from sensor_msgs.msg import Image
import time
import numpy as np

if __name__ =="__main__":
    cap = cv2.VideoCapture(0)
    #cap = cv2.VideoCapture("/home/aspopnly/Downloads/628eff783cf24f5d8224692bc483b312/亢奋/S01/亢奋.S01E08.HD1080P.中英双字.霸王龙压制组T-Rex.mp4")
    rospy.init_node("task_2_1_node")
    img_pub = rospy.Publisher('/image_view/image_raw',Image,queue_size= 10)
    while not rospy.is_shutdown():
        start = time.time()
        # get a frame
        ret, frame = cap.read()
        # show a frame
        cv2.imshow("capture", frame)
        if cv2.waitKey(100) & 0xFF == ord('q'):
            break
        if ret:
            frame = cv2.flip(frame,1)
            ros_frame = Image()
            header = Header(stamp = rospy.Time.now())
            header.frame_id = "Camera"
            ros_frame.header=header
            ros_frame.width = 640
            ros_frame.height = 480
            ros_frame.encoding = "bgr8"
            ros_frame.step = 1920
            ros_frame.data = np.array(frame).tostring() #图片格式转换
            img_pub.publish(ros_frame) #发布消息

    cap.release()
    cv2.destroyAllWindows() 