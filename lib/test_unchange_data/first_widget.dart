import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuild first widget');
    return const Text('const text');
  }
}
