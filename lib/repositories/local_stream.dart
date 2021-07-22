import 'package:flutter_webrtc/flutter_webrtc.dart';

class LocalStreamRepository {
  static Future<MediaStream> createStream() async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'facingMode': 'user',
      }
    };

    final devices = await navigator.mediaDevices.enumerateDevices();

    print('ENUMERATE DEVICES');
    print(devices);
    devices.forEach((device) {
      print("${device.deviceId} - ${device.kind} - ${device.label}");
    });

    final MediaStream stream =
        await navigator.mediaDevices.getUserMedia(mediaConstraints);

    print("LOCAL MEDIASTREAM");
    print("${stream.id} - ${stream.active}");

    return stream;
  }

  static Future<void> closeStream(MediaStream stream) async {
    // stream.getTracks().forEach((track) async {
    //   await track.stop();
    // });
    await stream.dispose();
  }
}
