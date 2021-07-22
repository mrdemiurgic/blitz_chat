import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:blitz_chat/blocs/remote_videos/remote_videos.dart';
import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:blitz_chat/repositories/signaler/signaler.dart';
import 'package:blitz_chat/repositories/peers/peers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blitz_chat/router/router.dart';
import '../theme.dart';

import 'package:uni_links/uni_links.dart';
import 'dart:io';

// const SIGNALER_URL = "http://192.168.50.202:3003";
const SIGNALER_URL = "https://signaler.blitz.chat";

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late final SignalerRepository _signaler;
  late final BlitzChatRouterInformationParser _routeInformationParser;
  late final BlitzChatRouterDelegate _routerDelegate;
  late final LocalVideoBloc _localVideoBloc;
  late final RoomNameCubit _roomNameCubit;

  @override
  void initState() {
    super.initState();

    _signaler = SignalerRepository(SIGNALER_URL);
    _roomNameCubit = RoomNameCubit();
    _localVideoBloc =
        LocalVideoBloc(signaler: _signaler, roomNameCubit: _roomNameCubit);
    _routeInformationParser = BlitzChatRouterInformationParser();
    _routerDelegate = BlitzChatRouterDelegate(
        signaler: _signaler, localVideoBloc: _localVideoBloc);

    // Needed until iOS Universal Linking is supported by Flutter Router
    if (!kIsWeb && Platform.isIOS) {
      deepLinkHandler(_routerDelegate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(value: _signaler),
          RepositoryProvider(create: (_) => PeersRepository()),
        ],
        child: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _roomNameCubit),
              BlocProvider.value(value: _localVideoBloc),
              BlocProvider(
                  lazy: false,
                  create: (BuildContext context) => RemoteVideosBloc(
                      signaler: _signaler,
                      peers: RepositoryProvider.of<PeersRepository>(context),
                      localVideoBloc: BlocProvider.of<LocalVideoBloc>(context)))
            ],
            child: MaterialApp.router(
                theme: BlitzTheme.lightTheme,
                routeInformationParser: _routeInformationParser,
                routerDelegate: _routerDelegate)));
  }

  Future<void> deepLinkHandler(BlitzChatRouterDelegate routerDelegate) async {
    try {
      final initialUri = await getInitialUri();
      routerDelegate.setDeepLink(initialUri);
    } catch (e) {
      print("oops. URI is invalid $e");
    }

    uriLinkStream.listen((updatedUri) {
      routerDelegate.setDeepLink(updatedUri);
    });
  }
}
