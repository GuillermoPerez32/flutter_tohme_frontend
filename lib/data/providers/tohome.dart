import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tohome/constants/constants.dart';

class ToHomeAPI {
  Future<Map<String, dynamic>> getProductById(String uuid) async {
    try {
      var response = await http.get(Uri.parse('$host_tohome/products/$uuid'));

      return response.statusCode == 200 ? json.decode(response.body) : null;
    } on Exception catch (e) {
      // TODO
      throw e;
    }
  }

  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      var response = await http.get(Uri.parse('$host_tohome/products/'));
      return response.statusCode == 200 ? json.decode(response.body) : null;
    } on Exception {
      throw Exception();
    }
  }
}
