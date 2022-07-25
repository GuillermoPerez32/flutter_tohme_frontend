import 'dart:convert';

import 'package:http/http.dart' as http;

class ToHomeAPI {
  Future<Map<String, dynamic>?> getProductById(String uuid) async {
    try {
      var response =
          await http.get(Uri.parse('http://127.0.0.1:8000/api/products/$uuid'));

      return response.statusCode == 200 ? json.decode(response.body) : null;
    } on Exception {
      // TODO
      return null;
    }
  }

  Future<List<Map<String, dynamic>>?> getProducts() async {
    try {
      var response =
          await http.get(Uri.parse('http://127.0.0.1:8000/api/products/'));
      return response.statusCode == 200 ? json.decode(response.body) : null;
    } on Exception {
      // TODO
      return [];
    }
  }
}
