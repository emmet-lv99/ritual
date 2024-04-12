import 'package:flutter/material.dart';
import 'package:my_ritual/view/comp_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle(fontWeight: FontWeight.w900);
    const msg = 'hello world';

    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: Column(
        children: [
          Image.asset('asset/images/sample.jpeg'),
          Text(
            '프리텐다드',
            style: TS.copyWith(fontSize: 30),
          ),
          CompHome(
            onPressed: (String val) {
              print(msg + ' ' + val);
            },
          ),
        ],
      ),
    );
  }
}
