import 'package:blitz_chat/blocs/remote_videos/remote_videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blitz_chat/widgets/video_box.dart';
import 'package:blitz_chat/utils/video_box.dart';

class RemoteVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('rebuilding remote videos widget');

    return BlocBuilder<RemoteVideosBloc, Map<String, RemoteVideoState>>(
        builder: (BuildContext context, Map<String, RemoteVideoState> videos) {
      final screenSize = MediaQuery.of(context).size;
      final orientation = MediaQuery.of(context).orientation;
      final videoRects = VideoBoxUtils.remoteVideoBoxes(
          orientation, screenSize, videos.keys.toList());

      print('videoRects: $videoRects');

      return Positioned.fill(
        child: Stack(
            children: videos.entries.map((e) {
          final state = e.value;
          return state is EstablishedConnection
              ? AnimatedPositioned.fromRect(
                  key: Key(e.key),
                  rect: videoRects[e.key]!.toRect(
                      Rect.fromLTWH(0, 0, screenSize.width, screenSize.height)),
                  duration: Duration(milliseconds: 250),
                  child: VideoBox(key: Key(e.key), mediaStream: state.stream))
              : Center(child: CircularProgressIndicator());
        }).toList()),
      );
    });
  }
}
