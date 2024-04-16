import 'package:flutter/material.dart';
import 'package:my_ritual/model/model_sample.dart';
import 'package:my_ritual/repository/data_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<ModelSample>> fetchData() async {
      final resp = await DataRepository.loadData();
      return resp;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('APP BAR'),
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
            final List<ModelSample> data = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('asset/images/sample.jpeg'),
                  Text(
                    'home',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                  ),
                  ...data.map((e) => Text(e.download_url)).toList()
                ],
              ),
            );
          }),
    );
  }
}
