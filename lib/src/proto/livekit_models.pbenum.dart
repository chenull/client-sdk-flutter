///
//  Generated code. Do not modify.
//  source: livekit_models.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TrackType extends $pb.ProtobufEnum {
  static const TrackType AUDIO = TrackType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUDIO');
  static const TrackType VIDEO = TrackType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIDEO');
  static const TrackType DATA = TrackType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA');

  static const $core.List<TrackType> values = <TrackType> [
    AUDIO,
    VIDEO,
    DATA,
  ];

  static final $core.Map<$core.int, TrackType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TrackType? valueOf($core.int value) => _byValue[value];

  const TrackType._($core.int v, $core.String n) : super(v, n);
}

class TrackSource extends $pb.ProtobufEnum {
  static const TrackSource UNKNOWN = TrackSource._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const TrackSource CAMERA = TrackSource._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CAMERA');
  static const TrackSource MICROPHONE = TrackSource._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MICROPHONE');
  static const TrackSource SCREEN_SHARE = TrackSource._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCREEN_SHARE');

  static const $core.List<TrackSource> values = <TrackSource> [
    UNKNOWN,
    CAMERA,
    MICROPHONE,
    SCREEN_SHARE,
  ];

  static final $core.Map<$core.int, TrackSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TrackSource? valueOf($core.int value) => _byValue[value];

  const TrackSource._($core.int v, $core.String n) : super(v, n);
}

class ParticipantInfo_State extends $pb.ProtobufEnum {
  static const ParticipantInfo_State JOINING = ParticipantInfo_State._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JOINING');
  static const ParticipantInfo_State JOINED = ParticipantInfo_State._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JOINED');
  static const ParticipantInfo_State ACTIVE = ParticipantInfo_State._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE');
  static const ParticipantInfo_State DISCONNECTED = ParticipantInfo_State._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');

  static const $core.List<ParticipantInfo_State> values = <ParticipantInfo_State> [
    JOINING,
    JOINED,
    ACTIVE,
    DISCONNECTED,
  ];

  static final $core.Map<$core.int, ParticipantInfo_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ParticipantInfo_State? valueOf($core.int value) => _byValue[value];

  const ParticipantInfo_State._($core.int v, $core.String n) : super(v, n);
}

class DataPacket_Kind extends $pb.ProtobufEnum {
  static const DataPacket_Kind RELIABLE = DataPacket_Kind._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RELIABLE');
  static const DataPacket_Kind LOSSY = DataPacket_Kind._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOSSY');

  static const $core.List<DataPacket_Kind> values = <DataPacket_Kind> [
    RELIABLE,
    LOSSY,
  ];

  static final $core.Map<$core.int, DataPacket_Kind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataPacket_Kind? valueOf($core.int value) => _byValue[value];

  const DataPacket_Kind._($core.int v, $core.String n) : super(v, n);
}

