import 'package:flutter_webrtc/flutter_webrtc.dart';

class LocalStreamRepository {
  static Future<MediaStream> createStream() async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'facingMode': 'user',
      }
    };
    final MediaStream stream =
        await navigator.mediaDevices.getUserMedia(mediaConstraints);
    return stream;
  }

  static Future<void> closeStream(MediaStream stream) async {
    // stream.getTracks().forEach((track) async {
    //   await track.stop();
    // });
    await stream.dispose();
  }
}
