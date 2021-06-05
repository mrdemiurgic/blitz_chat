import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class RoomNameCubit extends Cubit<String> {
  RoomNameCubit() : super('');

  void newText(String text) => emit(text);
  void clear() => emit('');
}
