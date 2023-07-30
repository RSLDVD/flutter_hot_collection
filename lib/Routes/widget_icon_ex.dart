import 'package:flutter/material.dart';

class WidgetIconEx extends StatelessWidget {
  const WidgetIconEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.email, size: 45.0, color: Colors.red[200]),
            Icon(Icons.home, size: 45.0, color: Colors.red[200]),
            Icon(Icons.repeat, size: 45.0, color: Colors.red[200]),
            Icon(Icons.remove_circle, size: 45.0, color: Colors.red[200]),
            Icon(Icons.wb_auto, size: 45.0, color: Colors.red[200]),
          ],
        ),
      ),
    );
  }
}
