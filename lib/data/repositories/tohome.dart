import 'package:tohome/data/models/product.dart';
import 'package:tohome/data/providers/tohome.dart';

class ToHomeRepository {
  final ToHomeAPI tohomeAPI = ToHomeAPI();

  // ToHomeRepository({
  //   required this.tohomeAPI,
  // });

  Future<List<Product>> getProducts() async {
    final List<Product> products = [];

    final data = await tohomeAPI.getProducts();
    data.map((e) => products.add(Product.fromJson(e)));
    return products;
  }
}
