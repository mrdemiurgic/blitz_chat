import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:blitz_chat/repositories/signaler/signaler.dart';
import 'package:flutter/material.dart';
import '../widgets/local_video_stateless.dart';
import '../widgets/remote_videos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signaler = RepositoryProvider.of<SignalerRepository>(context);
    final localVideoBloc = BlocProvider.of<LocalVideoBloc>(context);

    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [RemoteVideos(), LocalVideo()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.logout),
          backgroundColor: Color(0xFFE4572E),
          onPressed: () {
            localVideoBloc.add(Close());
            signaler.leave();
          }),
    );
  }
}
