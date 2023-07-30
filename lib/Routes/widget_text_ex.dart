import 'package:flutter/material.dart';

class WidgetTextEx extends StatelessWidget {
  const WidgetTextEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'data',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.amber,
                  fontSize: 38),
            ),
            Text(
              'data',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.amber,
                  fontStyle: FontStyle.italic,
                  fontSize: 40),
            ),
            Text(
              'data',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.amber,
                  fontSize: 22),
            ),
            Text(
              'data',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.amber,
                  fontSize: 60),
            ),
          ],
        ),
      ),
    );
  }
}
