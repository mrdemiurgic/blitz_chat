import 'package:bloc/bloc.dart';

class RoomNameCubit extends Cubit<String> {
  RoomNameCubit() : super('');

  void setName(String name) => emit(name);
  void clear() => emit('');
}
