import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uuid/uuid.dart';

class RoomNameField extends StatefulWidget {
  final RoomNameCubit roomNameCubit;

  const RoomNameField({Key? key, required RoomNameCubit this.roomNameCubit})
      : super(key: key);

  @override
  _RoomNameFieldState createState() => _RoomNameFieldState();
}

class _RoomNameFieldState extends State<RoomNameField> {
  final _controller = TextEditingController();
  late final StreamSubscription<String> _subscription;
  final uuid = Uuid();
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();

    _subscription = widget.roomNameCubit.stream.listen((text) {
      if (_controller.text != text) {
        _controller.text = text;
      }
    });

    _controller.addListener(() {
      widget.roomNameCubit.newText(_controller.text);
      setState(() {
        if (_controller.text.length > 0) {
          setState(() {
            _showClearButton = true;
          });
        } else {
          setState(() {
            _showClearButton = false;
          });
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.group),
              suffixIcon: _showClearButton
                  ? IconButton(
                      onPressed: () {
                        _controller.clear();
                      },
                      icon: Icon(Icons.clear))
                  : null,
              helperText: 'Room Name',
              hintText: 'Room Name',
              border: OutlineInputBorder()),
          controller: _controller),
      ElevatedButton.icon(
          onPressed: () {
            final newRoomName = uuid.v4();
            _controller.text = newRoomName;
          },
          style: ButtonStyle(),
          label: Text("Generate"),
          icon: Icon(Icons.cached))
    ]);
  }
}
