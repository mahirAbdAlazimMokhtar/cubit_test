import 'package:bloc/bloc.dart';
import 'package:cubit_test/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*
 - in Cubit
	1. Create class extends Cubit<States>
	2. Pass init state to super
	3. Create function to get object from the cubit
	4. Create Functions
	* */

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  //this for take instance from counterCubit
  static CounterCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int number = 0;
  void plusNumber() {
    number++;
    emit(PlusCounterState());
  }

  void minusNumber() {
    number--;
    emit(MinusCounterState());
  }
}
