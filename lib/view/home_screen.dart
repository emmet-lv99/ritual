import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle();
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: Column(
        children: [
          Image.asset('asset/images/sample.jpeg'),
          Text(
            'Hello World',
            style: TS.copyWith(fontSize: 40),
          )
        ],
      ),
    );
  }
}
