import 'package:flutter/material.dart';
import 'package:my_ritual/model/sample.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle(fontSize: 20);
    Sample.fnTmp();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'appbar',
          style: TS,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset('asset/images/sample.jpeg'),
          Text(
            'i am body',
            style: TS.copyWith(fontSize: 50),
          )
        ],
      ),
    );
  }
}
