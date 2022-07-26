import 'package:tohome/data/models/product.dart';
import 'package:tohome/data/providers/tohome.dart';

class ToHomeRepository {
  final ToHomeAPI tohomeAPI = ToHomeAPI();

  // ToHomeRepository({
  //   required this.tohomeAPI,
  // });

  Future<List<Product>> getProducts() async {
    final List<Product> products = [];

    try {
      final data = await tohomeAPI.getProducts();
      data.map((e) => products.add(Product.fromJson(e)));
    } on Exception catch (e) {
      throw e;
    }
    return products;
  }

  Future<Product?> getProductsById(String uuid) async {
    final Product? product;

    final data = await tohomeAPI.getProductById(uuid);
    product = Product.fromJson(data);
    return product;
  }
}
