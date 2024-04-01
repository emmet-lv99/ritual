import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app bar'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: 300,
            height: 300,
            child: LayoutBuilder(builder: (context, constraints) {
              return Row(
                children: [
                  Container(
                    color: Colors.black,
                    width: constraints.maxWidth / 3,
                    height: 100,
                    child: Text(
                      '${constraints.maxWidth}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.black,
                    width: 100,
                    height: 100,
                    child: Image.asset('asset/images/godsay.jpeg'),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
