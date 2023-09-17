import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    print('rebuild second widget');
    return Text(text);
  }
}
