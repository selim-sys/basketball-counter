import 'package:basketballcounter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{

  int teamAPoints = 0;

  int teamBPoints = 0;

  CounterCubit() : super(CounterIncrementState());



  void teamIncrement({required String team,required int buttonNumber}){
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterIncrementState());
    }
    else{
      teamBPoints += buttonNumber;
      emit(CounterIncrementState());
    }

  }
  void counterReset(){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }

}