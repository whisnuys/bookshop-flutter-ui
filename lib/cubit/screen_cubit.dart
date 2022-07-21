import 'package:bloc/bloc.dart';

class ScreenCubit extends Cubit<int> {
  ScreenCubit() : super(0);

  void setScreen(int newScreen) {
    emit(newScreen);
  }
}
