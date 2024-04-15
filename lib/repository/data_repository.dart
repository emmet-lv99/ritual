import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_ritual/model/data_model.dart';

class DataRepository {
  static Future<List<DataModel>> fetchData() async {
    final url = Uri.parse('https://picsum.photos/v2/list');
    final response = await http.get(url);
    final List<dynamic> jsonData = jsonDecode(response.body);
    final respData = jsonData.map((e) => DataModel.fromJson(e)).toList();
    return respData;
  }
}
