import 'package:flutter/material.dart';
import 'package:tohome/widgets/product_card_widget.dart';

class ProductDetailPage extends StatelessWidget {
  final String img_route;
  final String id;

  const ProductDetailPage({
    Key? key,
    required this.img_route,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    final double _cardWidth = _screenSize.width * .46;
    const double _cardHeight = 300;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(
            child: ProductCard(img_route: img_route, id: id),
          ),
        ],
      ),
    );
  }
}
