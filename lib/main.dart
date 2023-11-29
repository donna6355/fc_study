import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/freezed_sample.dart';



void main() {
  runApp(ProviderScope(child: FreezedSample()));
}

class MyApp extends ConsumerWidget {
   MyApp({super.key});
    final counterProvider = StateNotifierProvider((ref) => Counter());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    // ref.listen(counterProvider, (previous, next) { 
    //   print('riverpod count :$previous, $next');
    // });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Text('$count'),
        ),
        floatingActionButton: ElevatedButton(onPressed: ref.watch(counterProvider.notifier).increment, child: const Text('increment'),),
      ),
    );
  }
}

class Counter extends StateNotifier<int>{
  Counter():super(0);

  void increment() => state++;

}

/*
https://www.youtube.com/watch?v=X8NZidrj8ys

provider : returns any type, service class *read-only 
stateProvider : returns any type, simple state object *mutable state
StateNotifierProvider : returns a subclass of StateNotifier, mutable state with logic?
 */