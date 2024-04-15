import 'package:flutter/material.dart';
import 'package:my_ritual/model/data_model.dart';
import 'package:my_ritual/repository/data_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle();
    Future<List<DataModel>> getData() async {
      final data = await DataRepository.fetchData();
      return data;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<DataModel>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('에러 발생!'),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data;
          return SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('asset/images/sample.jpeg'),
                Text(
                  'Hello Wolrd',
                  style: TS.copyWith(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                ...data!.map((e) => Text(e.id)).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
