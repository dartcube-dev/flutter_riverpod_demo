import 'package:flutter/material.dart';

class NewsErrorWidget extends StatelessWidget {
  const NewsErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Error Occurred'),),
      ),
    );
  }
}