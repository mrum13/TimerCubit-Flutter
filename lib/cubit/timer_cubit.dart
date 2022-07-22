import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class TimerCubit extends Cubit<int> {
  TimerCubit() : super(10);

  void startTimer() {
    Timer _timer;
    int _start = 10;

    const oneSec = Duration(seconds: 1);
    // ignore: unnecessary_new
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        // for (_start; _start >= 1; _start - 1) {
        //   emit(state - 1);
        // }

        // if (_start == 0) {
        //   timer.cancel();

        //   // emit(state);
        // } else {
        //   _start - 1;
        //   emit(state - 1);
        // }

        _start - 1;
        emit(state - 1);
        if (state == 0) {
          timer.cancel();
          emit(state);
        }
      },
    );
  }
}
