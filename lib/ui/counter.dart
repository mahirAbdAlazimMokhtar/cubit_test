import 'package:cubit_test/cubit/counter_cubit.dart';
import 'package:cubit_test/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        builder: (BuildContext context, state) {
          CounterCubit cubit = CounterCubit.get(context);
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    cubit.plusNumber();
                  },
                  child: const Text('Plus'),
                ),
                Text(
                  '${cubit.number}',
                  style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                MaterialButton(
                  onPressed: () {
                    cubit.minusNumber();
                  },
                  child: const Text('Minus'),
                ),
              ],
            ),
          );
        },
        listener: (BuildContext context, state) {},
      ),
    );
  }
}
