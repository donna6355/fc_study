import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './model/person.dart';

class FreezedSample extends StatelessWidget {
  const FreezedSample({super.key});

  @override
  Widget build(BuildContext context) {
    final String extraString = GoRouterState.of(context).extra! as String;
    final Person p1 = Person(id: 1, name: 'Isaac', age: 3);
    final Person p2 = Person(id: 1, name: 'Isaac', age: 3);

    final Person p3 = p1.copyWith(id: 2);

    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Column(children: [
            Text(extraString),
            Text('p1.id = ${p1.id}'),
            Text('p1.name = ${p1.name}'),
            Text('p1.age = ${p1.age}'),
            Text('p1.toString = ${p1.toString()}'),
            Text('p2.toJson = ${p2.toJson().toString()}'),
            Text('p1 == p2 ${p1 == p2}'),
            ElevatedButton(
              onPressed: () => context.go('/'), 
              child: const Text('to riverpod Sample'),
            ),
          ],),
        ),
      ),
    );
  }
}

// https://blog.codefactory.ai/flutter/freezed/
// deep copyWith 18:28
// union 24:00