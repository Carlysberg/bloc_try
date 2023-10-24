import 'package:bloc_try/presentation/screens/home_screen.dart';
import 'package:bloc_try/presentation/screens/next_screen.dart';
import 'package:bloc_try/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: const HomeScreen(title: 'Flutter Demo Home Page',),
      ),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(title: 'Flutter Demo Home Page',),
        NextScreen.id: (context) => const NextScreen(title: 'Next Screen',),
        ThirdScreen.id: (context) => const ThirdScreen(title: 'Third Screen',),
      }
    );
  }
}
