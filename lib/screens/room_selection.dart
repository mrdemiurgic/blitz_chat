import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:blitz_chat/repositories/signaler/signaler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/room_name_field.dart';

class RoomSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signaler = RepositoryProvider.of<SignalerRepository>(context);

    return BlocConsumer<LocalVideoBloc, LocalVideoState>(
        builder: (BuildContext context, LocalVideoState state) {
      final localVideoBloc = BlocProvider.of<LocalVideoBloc>(context);
      final roomNameCubit = BlocProvider.of<RoomNameCubit>(context);
      return Scaffold(
        body: RoomNameField(roomNameCubit: roomNameCubit),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor:
                (state is StreamOpen) ? Colors.greenAccent[400] : Colors.amber,
            icon: Icon(Icons.login),
            label: Text("Enter Room"),
            onPressed: () {
              if (roomNameCubit.state == '') {
                roomNameCubit.newText('default');
                // open bottom sheet pointing to fact that room name is unset and offer to generate name
              }

              if (localVideoBloc.state is StreamOpen) {
                signaler.join(roomName: roomNameCubit.state);
              } else {
                localVideoBloc.add(Open());
              }
            }),
      );
    }, listener: (context, state) {
      final roomNameCubit = BlocProvider.of<RoomNameCubit>(context);
      if (state is StreamOpen) {
        signaler.join(roomName: roomNameCubit.state);
      }
    });
  }
}
