import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class VideoBox extends StatelessWidget {
  final RTCVideoRenderer renderer = RTCVideoRenderer();
  final MediaStream? mediaStream;
  VideoBox({Key? key, this.mediaStream}) : super(key: key) {
    initVideo();
  }

  Future<void> initVideo() async {
    await renderer.initialize();
    renderer.srcObject = mediaStream;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: RTCVideoView(renderer),
      decoration: BoxDecoration(color: Colors.black54),
    );
  }
}
