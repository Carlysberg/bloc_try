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

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter_Bloc Counter")),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  "The counter is: ${state.countValue}",
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            const SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        )
    );
  }
}
