import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_cubit/cubit/timer_cubit.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<TimerCubit>().startTimer();
    return Scaffold(
      body: BlocBuilder<TimerCubit, int>(
        builder: (context, state) {
          return SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Hitung mundur'),
                  const SizedBox(height: 8),
                  Text('$state'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
