import 'package:flutter/material.dart';
import 'package:tohome/pages/product_detail_page.dart';

class ProductCard extends StatelessWidget {
  final String id;
  final double _cardRadius = 22;

  final String img_route;

  const ProductCard({
    Key? key,
    required this.img_route,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    final double _cardWidth = _screenSize.width * .46;
    const double _cardHeight = 300;
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProductDetailPage(
            img_route: img_route,
            id: id,
          ),
        ),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 10,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_cardRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_cardRadius),
          child: Container(
            color: Colors.grey,
            height: _cardHeight,
            width: _cardWidth,
            child: Hero(
              tag: id,
              child: FadeInImage(
                image: NetworkImage(img_route),
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/coca-cola.jpg'),
              ),
            ),
            // child: Card(
            //   color: Colors.transparent,
            //   semanticContainer: true,
            //   clipBehavior: Clip.antiAliasWithSaveLayer,
            //   child: ListTile(
            //     onTap: () {},
            //     tileColor: Colors.transparent,
            //   ),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(_cardRadius),
            //   ),
            //   elevation: 0,
            // ),
          ),
        ),
      ),
    );
  }
}
