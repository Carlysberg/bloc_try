import 'package:bloc_try/presentation/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_cubit.dart';

void main() {
  runApp(
      BlocProvider(
        create: (context) => CounterCubit(),
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: const Counter(),
        ),
      )
  );
}

