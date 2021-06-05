import 'dart:async';

import 'package:blitz_chat/repositories/signaler/signaler.dart';
import 'package:blitz_chat/screens/room_selection.dart';
import 'package:blitz_chat/screens/splash.dart';
import 'package:blitz_chat/screens/video_chat.dart';
import 'package:flutter/material.dart';

import '../models/app_state.dart';

class BlitzChatRouterDelegate extends RouterDelegate<AppState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppState> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  AppState _appState = Bootstrapping();
  late final StreamSubscription _signalerSub;

  final SignalerRepository signaler;
  BlitzChatRouterDelegate({required this.signaler}) : super() {
    print('router delegate set up signaler listener $_appState');

    _signalerSub = signaler.stream.listen((SignalerEvent event) {
      event.maybeWhen(
          connected: () {
            _appState = OutRoom();
            notifyListeners();
          },
          disconnected: () {
            _appState =
                OutRoom(errorMessage: "network error: cannot reach server");
            notifyListeners();
          },
          welcome: (name, _, __) {
            _appState = InRoom(name: name);
            notifyListeners();
          },
          blitzError: (message) {
            _appState = OutRoom(errorMessage: message);
            notifyListeners();
          },
          bye: () {
            _appState = OutRoom();
            notifyListeners();
          },
          orElse: () {});
    });
  }

  AppState? get currentConfiguration => _appState;

  @override
  void dispose() {
    super.dispose();
    _signalerSub.cancel();
  }

  @override
  Future<void> setNewRoutePath(AppState state) async {
    state.maybeWhen(
        inRoom: (roomName) {
          signaler.join(roomName: roomName);
        },
        outRoom: (_) {
          signaler.leave();
        },
        orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: _pagesBuilder(_appState),
      onPopPage: (route, result) {
        signaler.leave();
        return false;
      },
    );
  }

  List<Page> _pagesBuilder(AppState? state) {
    if (state != null) {
      return state.when(
          bootstrapping: () =>
              [MaterialPage(key: ValueKey("Splash"), child: SplashScreen())],
          outRoom: (message) => [
                MaterialPage(
                    key: ValueKey("RoomSelection"),
                    child: RoomSelectionScreen())
              ],
          inRoom: (name) => [
                MaterialPage(
                    key: ValueKey("RoomSelection"),
                    child: RoomSelectionScreen()),
                MaterialPage(
                  key: ValueKey("VideoChat"),
                  child: VideoChatScreen(),
                ),
              ]);
    }
    return [MaterialPage(key: ValueKey("Splash"), child: SplashScreen())];
  }
}
