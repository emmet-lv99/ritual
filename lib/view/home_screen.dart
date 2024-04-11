import 'package:flutter/material.dart';
import 'package:my_ritual/view/comp_home.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int statusCode;

  @override
  void initState() {
    void loadApi() async {
      final url = Uri.parse('https://picsum.photos/id/1/200/300');
      final res = await http.get(url);
      setState(() {
        statusCode = res.statusCode;
      });
    }

    loadApi();
    super.initState();
  }

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
            'parent',
            style: TS.copyWith(fontSize: 40),
          ),
          CompHome(code: statusCode)
        ],
      ),
    );
  }
}
