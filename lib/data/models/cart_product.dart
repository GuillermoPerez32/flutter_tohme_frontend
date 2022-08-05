import 'package:tohome/data/models/product.dart';

class CartProduct extends Product {
  CartProduct({
    required String uuid,
    required String name,
    required List<int> categories,
    required int price,
    required String image,
    required int stock,
    required String description,
    required double rating,
    required int weekSell,
    this.cantidad = 0,
    this.confirmed = false,
  }) : super(
            uuid: uuid,
            name: name,
            categories: categories,
            price: price,
            image: image,
            stock: stock,
            description: description,
            rating: rating,
            weekSell: weekSell);
  CartProduct.fromProduct({
    required Product product,
    this.cantidad = 1,
    this.confirmed = false,
  }) : super(
            uuid: product.uuid,
            name: product.name,
            categories: product.categories,
            price: product.price,
            image: product.image,
            stock: product.stock,
            description: product.description,
            rating: product.rating,
            weekSell: product.weekSell);

  final int cantidad;
  final bool confirmed;
}
