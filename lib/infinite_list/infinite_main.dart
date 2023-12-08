import 'package:flutter/material.dart';

import 'view/posts_page.dart';

void main() {
  runApp(const App());
}

class App extends MaterialApp {
  const App({super.key}) : super(home: const PostsPage());
}
