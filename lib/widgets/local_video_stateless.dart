import 'package:blitz_chat/blocs/remote_videos/remote_videos.dart';
import 'package:blitz_chat/widgets/video_box.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:blitz_chat/utils/video_box.dart';

class LocalVideo extends StatefulWidget {
  const LocalVideo({Key? key}) : super(key: key);

  @override
  _LocalVideoState createState() => _LocalVideoState();
}

class _LocalVideoState extends State<LocalVideo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  static const _duration = Duration(milliseconds: 250);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _duration, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return BlocListener<RemoteVideosBloc, Map<String, dynamic>>(listener:
        (context, videos) {
      final isInCall = videos.length > 0;
      if (isInCall) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }, child:
        BlocBuilder<LocalVideoBloc, LocalVideoState>(builder: (context, state) {
      return PositionedTransition(
          rect: RelativeRectTween(
                  begin: VideoBoxUtils.fullSize(orientation, screenSize),
                  end: VideoBoxUtils.localMinimized(orientation, screenSize))
              .animate(_controller),
          child: VideoBox(
              mediaStream: (state is StreamOpen) ? state.localStream : null));
    }));
  }
}
