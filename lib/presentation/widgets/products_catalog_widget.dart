import 'package:flutter/material.dart';

import 'package:tohome/data/models/product.dart';
import 'package:tohome/presentation/styles/styles.dart';
import 'product_card_widget.dart';

class ProductsCatalog extends StatelessWidget {
  const ProductsCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: pageViewSize,
      child: _MyPageView(),
    );
  }
}

class _MyPageView extends StatelessWidget {
  _MyPageView({Key? key}) : super(key: key);
  final List<Product> products = [
    Product(
        uuid: '1',
        name: 'Hamburguesa',
        categories: [1],
        price: 25,
        image: 'assets/hamburguesa.jpg',
        stock: 24,
        description: '',
        rating: 0,
        weekSell: 0),
    Product(
        uuid: '2',
        name: 'Hamburguesa',
        categories: [1],
        price: 25,
        image: 'assets/hamburguesa.jpg',
        stock: 24,
        description: '',
        rating: 0,
        weekSell: 0),
    Product(
        uuid: '3',
        name: 'Hamburguesa',
        categories: [1],
        price: 25,
        image: 'assets/hamburguesa.jpg',
        stock: 24,
        description: '',
        rating: 0,
        weekSell: 0),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) => ProductCard(
        direction: Axis.vertical,
        imgRoute: products[index].image,
        id: products[index].uuid,
      ),
    );
  }
}
