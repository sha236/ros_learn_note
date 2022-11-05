// Auto-generated. Do not edit!

// (in-package robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class position_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_axis = null;
      this.y_axis = null;
      this.z_orin = null;
    }
    else {
      if (initObj.hasOwnProperty('x_axis')) {
        this.x_axis = initObj.x_axis
      }
      else {
        this.x_axis = 0.0;
      }
      if (initObj.hasOwnProperty('y_axis')) {
        this.y_axis = initObj.y_axis
      }
      else {
        this.y_axis = 0.0;
      }
      if (initObj.hasOwnProperty('z_orin')) {
        this.z_orin = initObj.z_orin
      }
      else {
        this.z_orin = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type position_msg
    // Serialize message field [x_axis]
    bufferOffset = _serializer.float64(obj.x_axis, buffer, bufferOffset);
    // Serialize message field [y_axis]
    bufferOffset = _serializer.float64(obj.y_axis, buffer, bufferOffset);
    // Serialize message field [z_orin]
    bufferOffset = _serializer.float64(obj.z_orin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type position_msg
    let len;
    let data = new position_msg(null);
    // Deserialize message field [x_axis]
    data.x_axis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_axis]
    data.y_axis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_orin]
    data.z_orin = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/position_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9be54f05995ecfa9e936b1300fc170b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x_axis
    float64 y_axis
    float64 z_orin
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new position_msg(null);
    if (msg.x_axis !== undefined) {
      resolved.x_axis = msg.x_axis;
    }
    else {
      resolved.x_axis = 0.0
    }

    if (msg.y_axis !== undefined) {
      resolved.y_axis = msg.y_axis;
    }
    else {
      resolved.y_axis = 0.0
    }

    if (msg.z_orin !== undefined) {
      resolved.z_orin = msg.z_orin;
    }
    else {
      resolved.z_orin = 0.0
    }

    return resolved;
    }
};

module.exports = position_msg;
