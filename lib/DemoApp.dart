import 'package:flutter/material.dart';

import 'MainPage.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        home: MainPage()
    );
  }
}