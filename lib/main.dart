import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_cubit/cubit/timer_cubit.dart';
import 'package:timer_cubit/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: ((context) => TimerCubit()))],
        child: MaterialApp(
          routes: {'/': (context) => Home()},
        ));
  }
}
