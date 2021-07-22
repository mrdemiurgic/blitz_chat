import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showNoRoomnameDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        final roomNameCubit = BlocProvider.of<RoomNameCubit>(context);
        final localVideoBloc = BlocProvider.of<LocalVideoBloc>(context);
        return AlertDialog(
            content: Text(
                "You did not enter a room name yet. Would you like to generate a random name?"),
            actions: [
              TextButton.icon(
                  onPressed: () {
                    roomNameCubit.generateRandomName();
                    localVideoBloc.add(Open(roomName: roomNameCubit.state));
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.handyman, color: Color(0xFFE4572E)),
                  label: Text('Generate',
                      style: TextStyle(color: Color(0xFFE4572E)))),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel),
                  label: Text('Cancel',
                      style: TextStyle(color: Color(0xFFE4572E))))
            ]);
      });
}
