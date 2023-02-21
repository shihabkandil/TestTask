import 'package:flutter/material.dart';
import 'package:testtask/home/presentation/page/home_page.dart';

/// Start [TestTaskApp] widget
class TestTaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
