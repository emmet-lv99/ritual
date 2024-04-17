import 'package:flutter/material.dart';
import 'package:my_ritual/model/data_model.dart';
import 'package:my_ritual/repository/data_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<List<DataModel>> fetchData() async {
    final data = await DataRepository.getData();
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('error'),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('asset/images/sample.jpeg'),
                Text(
                  'HELLO WORLD',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                  ),
                ),
                ...data.map((e) => Text(e.id)).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
