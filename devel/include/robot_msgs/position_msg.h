// Generated by gencpp from file robot_msgs/position_msg.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_POSITION_MSG_H
#define ROBOT_MSGS_MESSAGE_POSITION_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_msgs
{
template <class ContainerAllocator>
struct position_msg_
{
  typedef position_msg_<ContainerAllocator> Type;

  position_msg_()
    : x_axis(0.0)
    , y_axis(0.0)
    , z_orin(0.0)  {
    }
  position_msg_(const ContainerAllocator& _alloc)
    : x_axis(0.0)
    , y_axis(0.0)
    , z_orin(0.0)  {
  (void)_alloc;
    }



   typedef double _x_axis_type;
  _x_axis_type x_axis;

   typedef double _y_axis_type;
  _y_axis_type y_axis;

   typedef double _z_orin_type;
  _z_orin_type z_orin;





  typedef boost::shared_ptr< ::robot_msgs::position_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_msgs::position_msg_<ContainerAllocator> const> ConstPtr;

}; // struct position_msg_

typedef ::robot_msgs::position_msg_<std::allocator<void> > position_msg;

typedef boost::shared_ptr< ::robot_msgs::position_msg > position_msgPtr;
typedef boost::shared_ptr< ::robot_msgs::position_msg const> position_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_msgs::position_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_msgs::position_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_msgs::position_msg_<ContainerAllocator1> & lhs, const ::robot_msgs::position_msg_<ContainerAllocator2> & rhs)
{
  return lhs.x_axis == rhs.x_axis &&
    lhs.y_axis == rhs.y_axis &&
    lhs.z_orin == rhs.z_orin;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_msgs::position_msg_<ContainerAllocator1> & lhs, const ::robot_msgs::position_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::position_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::position_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::position_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::position_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::position_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::position_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_msgs::position_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9be54f05995ecfa9e936b1300fc170b1";
  }

  static const char* value(const ::robot_msgs::position_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9be54f05995ecfa9ULL;
  static const uint64_t static_value2 = 0xe936b1300fc170b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_msgs::position_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_msgs/position_msg";
  }

  static const char* value(const ::robot_msgs::position_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_msgs::position_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x_axis\n"
"float64 y_axis\n"
"float64 z_orin\n"
;
  }

  static const char* value(const ::robot_msgs::position_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_msgs::position_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_axis);
      stream.next(m.y_axis);
      stream.next(m.z_orin);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct position_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_msgs::position_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_msgs::position_msg_<ContainerAllocator>& v)
  {
    s << indent << "x_axis: ";
    Printer<double>::stream(s, indent + "  ", v.x_axis);
    s << indent << "y_axis: ";
    Printer<double>::stream(s, indent + "  ", v.y_axis);
    s << indent << "z_orin: ";
    Printer<double>::stream(s, indent + "  ", v.z_orin);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_POSITION_MSG_H
