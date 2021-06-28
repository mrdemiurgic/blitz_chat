import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class InviteSheet extends StatelessWidget {
  const InviteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final roomName = BlocProvider.of<RoomNameCubit>(context).state;
    final url = 'https://blitz.chat/$roomName';

    return Container(
        color: Colors.amber,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Invite people into this room"),
            Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(roomName,
                    style: Theme.of(context).textTheme.headline6)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton.icon(
                  style: ButtonStyle(),
                  icon: Icon(Icons.share),
                  label: Text("Share"),
                  onPressed: () {
                    Navigator.pop(context);
                    Share.share(url);
                  }),
              ElevatedButton.icon(
                  icon: Icon(Icons.link),
                  label: Text("Copy URL"),
                  onPressed: () {
                    Navigator.pop(context);
                    Clipboard.setData(new ClipboardData(text: url)).then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("URL copied to clipboard")));
                    });
                  })
            ])
          ],
        ));
  }
}
