import 'package:blitz_chat/blocs/remote_videos/remote_videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blitz_chat/widgets/video_box.dart';

class RemoteVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('rebuilding remote videos widget');

    return BlocBuilder<RemoteVideosBloc, Map<String, RemoteVideoState>>(
        builder: (BuildContext context, Map<String, RemoteVideoState> videos) {
      return Positioned(
          top: 0.0,
          left: 0.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
                children: videos.entries.map((e) {
              final state = e.value;
              return state is EstablishedConnection
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      height:
                          MediaQuery.of(context).size.height / videos.length,
                      child:
                          VideoBox(key: Key(e.key), mediaStream: state.stream))
                  : Center(child: CircularProgressIndicator());
            }).toList()),
          ));
    });
  }
}
