import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class VideoBox extends StatefulWidget {
  final MediaStream? mediaStream;
  final RTCVideoViewObjectFit objectFit;

  VideoBox(
      {Key? key,
      this.mediaStream,
      this.objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitContain})
      : super(key: key);

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
    await _renderer.initialize();
    setState(() {
      isRendererReady = true;
    });

    _renderer.onResize = () {
      final aspectRatio = _renderer.videoWidth / _renderer.videoHeight;
      print("onResize event: $aspectRatio");
    };
  }

  @override
  dispose() {
    super.dispose();
    _renderer.srcObject = null;
    _renderer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isRendererReady) {
      _renderer.srcObject = widget.mediaStream;
    }

    return RTCVideoView(_renderer, objectFit: widget.objectFit);
  }
}
