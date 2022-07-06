import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tohome/models/product_model.dart';
import 'package:http/http.dart' as http;

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogState(products: [])) {
    on<GetCatalogEvent>((event, emit) async {
      // TODO: implement event handler
      List<Product> products = await getProducts().whenComplete(() {});
      emit(CatalogState(products: products));
    });
  }

  Future<List<Product>> getProducts() async {
    var response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/products/'));

    if (response.statusCode == 200) {
      List<Product> products = [];
      final list = json.decode(response.body);
      for (var item in list) {
        products.add(Product.fromJson(item));
      }
      return products;
    } else {
      return [];
    }
  }
}
