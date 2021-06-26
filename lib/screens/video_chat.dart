import 'package:blitz_chat/widgets/video_chat_buttons.dart';
import 'package:flutter/material.dart';
import '../widgets/local_video_stateless.dart';
import '../widgets/remote_videos.dart';

class VideoChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Stack(
          alignment: Alignment.center,
          children: [RemoteVideos(), LocalVideo()],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: VideoChatButtons());
  }
}
