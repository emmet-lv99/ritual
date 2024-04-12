import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_ritual/model/sample_model.dart';
import 'package:my_ritual/view/comp_home.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Sample> resMapList = List.empty(growable: true);
  @override
  void initState() {
    void loadApi() async {
      final url = Uri.parse('https://picsum.photos/v2/list');
      final res = await http.get(url);
      final List<dynamic> json = jsonDecode(res.body);
      setState(() {
        resMapList = json.map((i) => Sample.fromJson(json: i)).toList();
      });
    }

    loadApi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle(fontWeight: FontWeight.w900);
    const msg = 'hello world';

    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            ...resMapList.map((e) => Text(e.author)).toList(),
          ],
        ),
      ),
    );
  }
}
