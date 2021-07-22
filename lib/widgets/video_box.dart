import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class VideoBox extends StatefulWidget {
  final MediaStream? mediaStream;

  VideoBox({Key? key, this.mediaStream}) : super(key: key);

  @override
  _VideoBoxState createState() => _VideoBoxState();
}

class _VideoBoxState extends State<VideoBox> {
  RTCVideoRenderer _renderer = RTCVideoRenderer();
  bool isRendererReady = false;

  @override
  void initState() {
    super.initState();
    initVideo();
  }

  Future<void> initVideo() async {
    try {
      await _renderer.initialize();
      setState(() {
        isRendererReady = true;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  dispose() {
    _renderer.srcObject = null;
    _renderer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isRendererReady) {
      print("writing stream to renderer!");
      _renderer.srcObject = widget.mediaStream;
    }

    return Padding(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: RTCVideoView(_renderer,
                objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover)));
  }
}
