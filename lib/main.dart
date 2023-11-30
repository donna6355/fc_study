import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/gorouter_sample.dart';

void main() {
  runApp(
    ProviderScope(
      child: 
      MaterialApp.router(
        routerConfig: router,
      ),
    ),  
  );
}