import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:name_of_module/name_of_module.dart';
import 'package:test/secure_storage.dart';

class StatusBarTest extends StatelessWidget {
  const StatusBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.leanBack); // hide status bar and bottom nav bar
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
            FilledButton(
                onPressed: () async {
                  final res = await SecureStorage().getAccessToken();
                  print(res); //null 리턴하고 문제 없음
                },
                child: Text('test')),
            FilledButton(
                onPressed: () async {
                  int num = 3;
                  int res = Calculator().addOne(num);
                  print('$num+1 = $res');
                },
                child: Text('call fn from module'))
          ],
        ));
  }
}
