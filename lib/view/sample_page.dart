import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({super.key});

  @override
  State<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  String s = '';

  @override
  Widget build(BuildContext context) {
    final String? test2;

    return Scaffold(
      appBar: AppBar(
        title: Text('sample'),
      ),
      body: Center(
        child: Text('center'),
      ),
    );
  }
}
