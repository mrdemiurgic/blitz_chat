import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:blitz_chat/widgets/invite_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoChatButtons extends StatelessWidget {
  const VideoChatButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localVideoBloc = BlocProvider.of<LocalVideoBloc>(context);

    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      FloatingActionButton.extended(
          heroTag: "leaveButton",
          icon: Icon(Icons.logout),
          label: Text("Leave"),
          backgroundColor: Color(0xFFE4572E),
          onPressed: () {
            localVideoBloc.add(Close());
          }),
      FloatingActionButton.extended(
          heroTag: "inviteButton",
          icon: Icon(Icons.person_add),
          label: Text("Invite"),
          backgroundColor: Color(0xFFE4572E),
          onPressed: () {
            _showInviteSheet(context);
          }),
    ]);
  }

  void _showInviteSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.pink,
        context: context,
        builder: (context) {
          return InviteSheet();
        });
  }
}
