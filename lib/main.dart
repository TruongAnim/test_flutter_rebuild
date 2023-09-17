import 'package:flutter/material.dart';
import 'package:test_flutter_rebuild/test_unchange_data/test_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    print('Rebuild main');
    return MaterialApp(
      home: TestScreen(),
    );
  }
}
