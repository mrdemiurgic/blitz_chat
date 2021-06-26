import 'package:blitz_chat/blocs/room_name/room_name.dart';
import 'package:bloc/bloc.dart';
import 'local_video_event.dart';
import 'local_video_state.dart';
import 'package:blitz_chat/repositories/local_stream.dart';

export 'local_video_event.dart';
export 'local_video_state.dart';

import 'package:blitz_chat/repositories/signaler/signaler.dart';

class LocalVideoBloc extends Bloc<LocalVideoEvent, LocalVideoState> {
  final SignalerRepository signaler;
  final RoomNameCubit roomNameCubit;

  LocalVideoBloc(
      {required SignalerRepository this.signaler,
      required RoomNameCubit this.roomNameCubit})
      : super(StreamClosed()) {
    print("LocalVideoBLoc constructor");
  }

  @override
  Stream<LocalVideoState> mapEventToState(LocalVideoEvent event) {
    return event.when(open: (roomName) async* {
      try {
        final newStream = await LocalStreamRepository.createStream();
        roomNameCubit.setName(roomName);
        signaler.join(roomName: roomName);

        yield StreamOpen(localStream: newStream);
      } catch (e) {
        yield StreamError(message: e);
      }
    }, close: () async* {
      final currentState = state;
      if (currentState is StreamOpen) {
        await LocalStreamRepository.closeStream(currentState.localStream);
        signaler.leave();
        yield StreamClosed();
      }
    });
  }

  @override
  Future<void> close() async {
    final currentState = state;
    if (currentState is StreamOpen) {
      LocalStreamRepository.closeStream(currentState.localStream);
    }
    super.close();
  }
}
