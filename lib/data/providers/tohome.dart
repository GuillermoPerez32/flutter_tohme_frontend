import 'dart:convert';

import 'package:http/http.dart' as http;

class ToHomeAPI {
  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      var response =
          await http.get(Uri.parse('http://127.0.0.1:8000/api/products/'));
      return json.decode(response.body);
    } on Exception {
      // TODO
      return [];
    }
  }
}
