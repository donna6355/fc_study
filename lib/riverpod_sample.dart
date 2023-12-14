import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RiverPodSmp extends ConsumerWidget {
  RiverPodSmp({super.key});
  final counterProvider = StateNotifierProvider((ref) => Counter());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    // ref.listen(counterProvider, (previous, next) {
    //   print('riverpod count :$previous, $next');
    // });

    return Scaffold(
      appBar: AppBar(title: const Text('Example')),
      body: Center(
        child: Column(
          children: [
            Text('$count'),
            ElevatedButton(
              onPressed: () => context.go('/iamport', extra: 'test'),
              child: const Text('to Freezed Sample'),
            ),
            OutlinedButton(
              onPressed: () => context.go('/mediaquery'),
              child: const Text('go Media Query Sample'),
            ),
            FilledButton(
              onPressed: () => context.go('/dial'),
              child: const Text('go dial Sample'),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: ref.watch(counterProvider.notifier).increment,
        child: const Text('increment'),
      ),
    );
  }
}

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
}

/*
https://www.youtube.com/watch?v=X8NZidrj8ys

provider : returns any type, service class *read-only 
stateProvider : returns any type, simple state object *mutable state
StateNotifierProvider : returns a subclass of StateNotifier, mutable state with logic?
 */
