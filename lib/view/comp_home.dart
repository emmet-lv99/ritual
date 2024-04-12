import 'package:flutter/material.dart';

class CompHome extends StatelessWidget {
  final void Function(String val) onPressed;

  const CompHome({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => onPressed('universe'),
          child: const Text('child button'),
        ),
      ],
    );
  }
}
