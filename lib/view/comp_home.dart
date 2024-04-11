import 'package:flutter/material.dart';

class CompHome extends StatelessWidget {
  final int code;
  const CompHome({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$code'),
    );
  }
}
