import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_book/view_model/view/data.model.dart';

Future<String> makeHttpCall() async {
  final apiKey = 'q=quilting';
  final apiEndPoint =
      Uri.parse('https://www.googleapis.com/books/v1/volumes?$apiKey');

  final http.Response response =
      await http.get(apiEndPoint, headers: {'Accept': 'application/json'});

  // final jsonObject = jsonDecode(response.body);
  return response.body;
}

//using data model construction
Future<dynamic> makeHttpModel() async {
  final apiKey = 'q=quilting';
  final apiEndPoint =
      Uri.parse('https://www.googleapis.com/books/v1/volumes?$apiKey');

  final http.Response response =
      await http.get(apiEndPoint, headers: {'Accept': 'application/json'});

  final jsonObject = jsonDecode(response.body);
  return jsonObject;
}

Future<List<DataModel>> makeHttpData() async {
  final apiKey = 'q=quilting';
  final apiEndPoint =
      Uri.parse('https://www.googleapis.com/books/v1/volumes?$apiKey');

  final http.Response response =
      await http.get(apiEndPoint, headers: {'Accept': 'application/json'});

  final jsonObject = jsonDecode(response.body);

  var list = jsonObject['items'] as List;
  return list.map((e) => DataModel.fromJson(e)).toList();
}
