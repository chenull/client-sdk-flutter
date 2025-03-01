import 'dart:convert';

import 'package:flutter_webrtc/flutter_webrtc.dart' as rtc;

import 'events.dart';
import 'managers/event.dart';
import 'proto/livekit_models.pb.dart' as lk_models;
import 'proto/livekit_rtc.pb.dart' as lk_rtc;
import 'types.dart';

extension DataPacketKindExt on lk_models.DataPacket_Kind {
  Reliability toSDKType() => {
        lk_models.DataPacket_Kind.RELIABLE: Reliability.reliable,
        lk_models.DataPacket_Kind.LOSSY: Reliability.lossy,
      }[this]!;
}

extension LiveKitEventExt on Iterable<EventsEmitter<LiveKitEvent>> {
  void emit(LiveKitEvent event) => forEach((emitter) => emitter.emit(event));
}

extension ICEServerExt on lk_rtc.ICEServer {
  RTCIceServer toSDKType() => RTCIceServer(
        urls: urls,
        username: username.isNotEmpty ? username : null,
        credential: credential.isNotEmpty ? username : null,
      );
}

extension IterableExt<E> on Iterable<E> {
  E? elementAtOrNull(int index) =>
      (index >= 0 && index < length) ? elementAt(index) : null;
}

extension ObjectExt on Object {
  String get objectId => '${runtimeType}#${hashCode}';
}

extension ProtocolVersionExt on ProtocolVersion {
  String toStringValue() => {
        ProtocolVersion.protocol2: '2',
        ProtocolVersion.protocol3: '3',
      }[this]!;
}

extension ReliabilityExt on Reliability {
  lk_models.DataPacket_Kind toPBType() => {
        Reliability.reliable: lk_models.DataPacket_Kind.RELIABLE,
        Reliability.lossy: lk_models.DataPacket_Kind.LOSSY,
      }[this]!;
}

extension RTCIceCandidateExt on rtc.RTCIceCandidate {
  static rtc.RTCIceCandidate fromJson(String jsonString) {
    final map = json.decode(jsonString) as Map<String, dynamic>;
    return rtc.RTCIceCandidate(
      map['candidate'] as String?,
      map['sdpMid'] as String?,
      map['sdpMLineIndex'] as int?,
    );
  }

  String toJson() => json.encode(toMap());
}

extension RTCIceConnectionStateExt on rtc.RTCIceConnectionState {
  bool isConnected() => [
        rtc.RTCIceConnectionState.RTCIceConnectionStateConnected,
        rtc.RTCIceConnectionState.RTCIceConnectionStateCompleted,
      ].contains(this);
}

extension RTCIceTransportPolicyExt on RTCIceTransportPolicy {
  String toStringValue() => {
        RTCIceTransportPolicy.all: 'all',
        RTCIceTransportPolicy.relay: 'relay',
      }[this]!;
}

// not so neat to directly expose protobuf types so we
// define our own types (and convert methods)
extension RTCSessionDescriptionExt on rtc.RTCSessionDescription {
  lk_rtc.SessionDescription toSDKType() {
    return lk_rtc.SessionDescription(type: type, sdp: sdp);
  }
}

extension SessionDescriptionExt on lk_rtc.SessionDescription {
  rtc.RTCSessionDescription toSDKType() {
    return rtc.RTCSessionDescription(sdp, type);
  }
}
