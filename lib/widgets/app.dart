import 'package:blitz_chat/blocs/local_video/local_video.dart';
import 'package:blitz_chat/blocs/remote_videos/remote_videos.dart';
import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:flutter/material.dart';
import 'package:blitz_chat/repositories/signaler/signaler.dart';
import 'package:blitz_chat/repositories/peers/peers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blitz_chat/router/router.dart';
import '../theme.dart';

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

  @override
  void initState() {
    super.initState();
    _signaler = SignalerRepository(SIGNALER_URL);
    _routeInformationParser = BlitzChatRouterInformationParser();
    _routerDelegate = BlitzChatRouterDelegate(signaler: _signaler);
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
              BlocProvider(lazy: true, create: (_) => RoomNameCubit()),
              BlocProvider(lazy: true, create: (_) => LocalVideoBloc()),
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
}
