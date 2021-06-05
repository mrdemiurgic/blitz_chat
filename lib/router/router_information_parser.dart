import 'package:flutter/material.dart';
import '../models/app_state.dart';

class BlitzChatRouterInformationParser
    extends RouteInformationParser<AppState> {
  BlitzChatRouterInformationParser() : super() {
    print("BlitzChatRouterInformationParser constructor");
  }

  @override
  Future<AppState> parseRouteInformation(
      RouteInformation routeInformation) async {
    print('url: ${routeInformation.location}');

    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.length == 0) {
      return OutRoom();
    }

    final roomName = uri.pathSegments[0];
    print("route parser roomName: $roomName");
    return InRoom(name: roomName);
  }

  @override
  RouteInformation restoreRouteInformation(AppState state) {
    print('restoreRouteInformation $state');
    return state.maybeWhen(
        inRoom: (roomName) => RouteInformation(location: '/$roomName'),
        orElse: () => RouteInformation(location: '/'));
  }
}
