// Auto-generated. Do not edit!

// (in-package my_msgs_p.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class user_control_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.need_stop = null;
    }
    else {
      if (initObj.hasOwnProperty('need_stop')) {
        this.need_stop = initObj.need_stop
      }
      else {
        this.need_stop = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_control_msgs
    // Serialize message field [need_stop]
    bufferOffset = _serializer.int64(obj.need_stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_control_msgs
    let len;
    let data = new user_control_msgs(null);
    // Deserialize message field [need_stop]
    data.need_stop = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msgs_p/user_control_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8171a97e85519dd4fe2e897b160f54e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 need_stop
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_control_msgs(null);
    if (msg.need_stop !== undefined) {
      resolved.need_stop = msg.need_stop;
    }
    else {
      resolved.need_stop = 0
    }

    return resolved;
    }
};

module.exports = user_control_msgs;
