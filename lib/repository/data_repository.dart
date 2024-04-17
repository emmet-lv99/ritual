import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_ritual/model/data_model.dart';

class DataRepository {
  static Future<List<DataModel>> getData() async {
    final url = Uri.parse('https://picsum.photos/v2/list');
    final response = await http.get(url);
    final List<dynamic> responseIter = jsonDecode(response.body);
    return responseIter.map((e) => DataModel.fromJson(json: e)).toList();
  }
}
