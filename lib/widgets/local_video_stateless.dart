import 'package:blitz_chat/blocs/remote_videos/remote_videos.dart';
import 'package:blitz_chat/widgets/video_box.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class LocalVideo extends StatefulWidget {
  const LocalVideo({Key? key}) : super(key: key);

  @override
  _LocalVideoState createState() => _LocalVideoState();
}

class _LocalVideoState extends State<LocalVideo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        lowerBound: 0.25,
        upperBound: 1,
        value: 1,
        duration: const Duration(milliseconds: 250),
        vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocListener<RemoteVideosBloc, Map<String, dynamic>>(listener:
        (context, videos) {
      final isInCall = videos.length > 0;
      if (isInCall) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
    }, child:
        BlocBuilder<LocalVideoBloc, LocalVideoState>(builder: (context, state) {
      return Positioned(
          bottom: 0,
          right: 0,
          child: ScaleTransition(
              alignment: Alignment.bottomRight,
              scale: _controller,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(state is StreamOpen ? 10 : 0)),
                  width: screenSize.width,
                  height: screenSize.height,
                  child: VideoBox(
                      objectFit:
                          RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                      mediaStream:
                          (state is StreamOpen) ? state.localStream : null))));
    }));
  }
}

class LocalVideoHehe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalVideoBloc, LocalVideoState>(
        builder: (BuildContext context, LocalVideoState state) {
      final isInCall =
          context.select((RemoteVideosBloc bloc) => bloc.state.length > 0);

      final screenSize = MediaQuery.of(context).size;

      print('rebuilding local video widget');
      return Positioned(
          bottom: 0.0,
          right: 0.0,
          child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: isInCall ? 200 : screenSize.width,
              height: isInCall ? 200 : screenSize.height,
              color: Color(0xffaadd00),
              child: VideoBox(
                  objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                  mediaStream:
                      (state is StreamOpen) ? state.localStream : null)));
    });
  }
}
