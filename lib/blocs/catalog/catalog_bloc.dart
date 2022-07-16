import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../../data/models/product.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogState(products: [], loaded: false)) {
    on<GetCatalogEvent>((event, emit) async {
      // TODO: implement event handler
      List<Product> products = await getProducts().whenComplete(() {});
      emit(CatalogState(products: products, loaded: true));
    });
  }

  Future<List<Product>> getProducts() async {
    try {
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
    } on Exception {
      // TODO
      return [];
    }
  }
}
