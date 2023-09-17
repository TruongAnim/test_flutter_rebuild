import 'package:flutter/material.dart';

import 'first_widget.dart';
import 'second_widget.dart';
import 'third_widget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

// Check if the children widget is rebuild or not when the parent widget is rebuild.
class _TestScreenState extends State<TestScreen> {
  int count = 0;
  int temp = 5;
  final String tempText = 'hello';
  static const constText = 'const text';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                count++;
                setState(() {});
              },
              child: Text('Add $count'),
            ),
            // // Cả 3 sẽ rebuild.
            // FirstWidget(),
            // SecondWidget(text: count.toString()),
            // ThirdWidget(text: temp.toString()),
            // // Rebuild 2 và 3
            // const FirstWidget(),
            // SecondWidget(text: count.toString()),
            // ThirdWidget(text: temp.toString()),
            // // Rebuild 3
            // const FirstWidget(),
            // const SecondWidget(text: 'hehe'),
            // ThirdWidget(text: temp.toString()),
            // // Rebuild 3
            // const FirstWidget(),
            // const SecondWidget(text: 'hehe'),
            // ThirdWidget(text: tempText),
            // Không rebuild thằng nào
            const FirstWidget(),
            const SecondWidget(text: 'hehe'),
            const ThirdWidget(text: constText),
          ],
        ),
      ),
    );
  }
}
