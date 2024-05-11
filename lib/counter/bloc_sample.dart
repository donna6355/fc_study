import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Stream<int> boatStream() async* {
  for (var i = 0; i <= 10; i++) {
    print("SENT BOAT NO.$i");
    await Future.delayed(const Duration(seconds: 2));
    yield i;
  }
}

void main(List<String> args) {
  Stream<int> stream = boatStream();

  stream.listen((receivedData) {
    print('RECEIVED BOAT NO. $receivedData');
  });
}

//cubit sample

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(child: Text('$count')),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on((event, emit) {
      switch (event) {
        case CounterEvent.increment:
          emit(state + 1);
          break;
        case CounterEvent.decrement:
          emit(state - 1);
          break;
      }
    });
  }
}


// Future<void> mainSample(List<String> args) async {
//   final bloc = CounterBloc();
//   final streamSubscription = bloc.listen(print);
//   bloc.add(CounterEvent.increment);

//   await Future.delayed(Duration.zero);
//   await streamSubscription.cancel();
//   await bloc.close();
  
// }