import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_ritual/model/model_sample.dart';

class DataRepository {
  static Future<List<ModelSample>> loadData() async {
    final url = Uri.parse('https://picsum.photos/v2/list');
    final response = await http.get(url);
    final List<dynamic> listData = jsonDecode(response.body);
    return listData.map((e) => ModelSample.fromJson(json: e)).toList();
  }
}
