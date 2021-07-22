import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:blitz_chat/widgets/video_chat_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/local_video_stateless.dart';
import '../widgets/remote_videos.dart';

class VideoChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final roomNameCubit = BlocProvider.of<RoomNameCubit>(context);
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [RemoteVideos(), LocalVideo()],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: VideoChatButtons());
  }
}
