// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  final String uuid;
  final String name;
  final List<int> categories;
  final int price;
  final String image;
  final int stock;
  final String description;
  final double rating;
  final int weekSell;
  Product({
    required this.uuid,
    required this.name,
    required this.categories,
    required this.price,
    required this.image,
    required this.stock,
    required this.description,
    required this.rating,
    required this.weekSell,
  });

  Product copyWith({
    required String uuid,
    required String name,
    required List<int> categories,
    required int price,
    required String image,
    required int stock,
    required String description,
    required double rating,
    required int weekSell,
  }) =>
      Product(
        uuid: uuid,
        name: name,
        categories: categories,
        price: price,
        image: image,
        stock: stock,
        description: description,
        rating: rating,
        weekSell: weekSell,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        uuid: json["uuid"],
        name: json["name"],
        categories: List<int>.from(json["categories"].map((x) => x)),
        price: json["price"],
        image: json["image"],
        stock: json["stock"],
        description: json["description"],
        rating: json["rating"] / 1,
        weekSell: json["week_sell"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "name": name,
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "price": price,
        "image": image,
        "stock": stock,
        "description": description,
        "rating": rating,
        "week_sell": weekSell,
      };
}
