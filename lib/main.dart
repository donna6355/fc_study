import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/gorouter_sample.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp.router(
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
      ),
    ),
  );
}
