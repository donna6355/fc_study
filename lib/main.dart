import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/gorouter_sample.dart';

void main() {
  //customize error screen
  ErrorWidget.builder = (_) => const Center(child: Text('Error Occurs'));
  //
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
    //send crashlytics service...
  };
  runApp(
    ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.red, // 안드로이드만?? (iOS에서는 아무 변화없음)
              // statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light, // iOS에서 먹히는 설정(검정 글씨로 표시됨)
            ),
          ),
          colorSchemeSeed: Colors.white,
          filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(color: Colors.green),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
        routerConfig: router,
        builder: (context, child) => MediaQuery(
          //limit possible extent of text scaling
          data: MediaQuery.of(context).copyWith(
              textScaler: MediaQuery.of(context)
                  .textScaler
                  .clamp(minScaleFactor: 0.8, maxScaleFactor: 1.6)),
          child: child!,
        ),
      ),
    ),
  );
}

//https://medium.com/@pomis172/properly-handling-text-scaling-in-flutter-313fe717816c

//https://medium.com/@LordChris/understanding-and-addressing-the-grey-screen-in-flutter-5e72c31f408f



//obfuscation
//https://medium.com/@gizemgizgg/obfuscation-in-flutter-and-dart-mysterious-codes-64d91f0fad10
//flutter build apk --release --obfuscate --split-debug-info=./build_info
//flutter build ios --release --obfuscate --split-debug-info=./build_info