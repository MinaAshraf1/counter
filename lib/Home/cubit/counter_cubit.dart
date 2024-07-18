import 'package:counter/Home/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(): super(InitState());

  int APoints = 0;
  int BPoints = 0;

  void TeamIncrement({required String team, required int addNum}) {
    if(team == 'A') {
      APoints += addNum;
      emit(CounterA());
    } else {
      BPoints += addNum;
      emit(CounterB());
    }
  }

  void reset() {
    APoints = 0;
    BPoints = 0;
    emit(CounterA());
  }
}