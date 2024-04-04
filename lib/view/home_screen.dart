import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
      body: Column(
        children: [
          Image.asset('asset/images/sample.jpeg'),
          Text(
            'hi',
            style: TS,
          )
        ],
      ),
    );
  }
}
