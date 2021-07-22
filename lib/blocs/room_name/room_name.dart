import 'package:bloc/bloc.dart';
import 'package:uuid/uuid.dart';

class RoomNameCubit extends Cubit<String> {
  RoomNameCubit() : super('');
  final uuid = Uuid();

  void generateRandomName() {
    final newRoomName = uuid.v4();
    emit(newRoomName);
  }

  void setName(String name) => emit(name);
  void clear() => emit('');
}
