import 'package:bloc/bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'local_video_event.dart';
import 'local_video_state.dart';
import 'package:blitz_chat/repositories/local_stream.dart';

export 'local_video_event.dart';
export 'local_video_state.dart';

class LocalVideoBloc extends Bloc<LocalVideoEvent, LocalVideoState> {
  LocalVideoBloc() : super(StreamClosed()) {
    print("LocalVideoBLoc constructor");
  }

  @override
  Stream<LocalVideoState> mapEventToState(LocalVideoEvent event) {
    return event.when(open: () async* {
      try {
        final newStream = await LocalStreamRepository.createStream();

        yield StreamOpen(localStream: newStream);
      } catch (e) {
        yield StreamError(message: e);
      }
    }, close: () async* {
      final currentState = state;
      if (currentState is StreamOpen) {
        await LocalStreamRepository.closeStream(currentState.localStream);
        yield StreamClosed();
      }
    });
  }

  @override
  Future<void> close() async {
    super.close();
    final currentState = state;
    if (currentState is StreamOpen) {
      LocalStreamRepository.closeStream(currentState.localStream);
    }
  }
}
