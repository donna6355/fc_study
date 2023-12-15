import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarTest extends StatelessWidget {
  const StatusBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('it doesnt work...')),
        body: Column(
          children: [
            FilledButton(
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle.dark);
                },
                child: Text('하얗게')),
            FilledButton(
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle.light);
                },
                child: Text('상태바 까맣게')),
          ],
        ));
  }
}
