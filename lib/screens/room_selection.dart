import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:blitz_chat/widgets/no_roomname_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/room_name_field.dart';

class RoomSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalVideoBloc, LocalVideoState>(
        builder: (BuildContext context, LocalVideoState state) {
      final localVideoBloc = BlocProvider.of<LocalVideoBloc>(context);
      final roomNameCubit = BlocProvider.of<RoomNameCubit>(context);
      return Scaffold(
        appBar: AppBar(title: Text("Create Room")),
        body: RoomNameField(roomNameCubit: roomNameCubit),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor:
                (state is StreamOpen) ? Colors.greenAccent[400] : Colors.amber,
            icon: Icon(Icons.login),
            label: Text("Enter Room"),
            onPressed: () {
              if (roomNameCubit.state == '') {
                showNoRoomnameDialog(context);
              } else {
                localVideoBloc.add(Open(roomName: roomNameCubit.state));
              }
            }),
      );
    });
  }
}
