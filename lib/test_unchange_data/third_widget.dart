import 'package:flutter/material.dart';

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({super.key, required this.text});
  final String text;
  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  @override
  Widget build(BuildContext context) {
    print('rebuild third widget');
    return Text(widget.text);
  }
}
