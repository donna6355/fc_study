import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  @override
  Widget build(BuildContext context) {
    print('MEDIA QUERY RESPONSES BUILD');
    // print(MediaQuery.of(context).size);
    return Scaffold(
      appBar: AppBar(title: const Text('미디어쿼리 동작 테스트')),
      body: Column(
        children: [
          // Text('가로 사이즈 ${MediaQuery.of(context).size.width}'),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   color: Colors.amber,
          //   margin: const EdgeInsets.only(bottom: 10),
          // ),
          SeparateMediaQuery(),
          TextField()
        ],
      ),
    );
  }
}

class SeparateMediaQuery extends StatelessWidget {
  const SeparateMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    print('SEPARATE MEDIA QUERY RESPONSES BUILD ${DateTime.now()}');
    return Column(
      children: [
        Text('세로 사이즈 ${MediaQuery.of(context).size.height}'),
        Container(
          width: MediaQuery.of(context).size.height * 0.3,
          color: Colors.amber,
          margin: const EdgeInsets.only(bottom: 10),
        ),
      ],
    );
  }
}

/*
ios 15.4.1 개발폰 테스트 결과 가상 키보드와 같이 화면이 변하는 경우 MediaQuery에 반응하지 않음?
ios 17.0 시뮬레이터에서 테스트 결과 가상 키보드가 나타나고 사라짐에 따라 위젯이 다시 빌드됨.

MediaQuery를 사용하는 위젯을 따로 나누었을 때 나누어진 위젯만 다시 빌드되는 것 확인 완료!
*/