import 'package:flutter/material.dart';
import 'package:tohome/presentation/pages/product_detail.dart';
import 'package:tohome/presentation/styles/styles.dart';

class ProductCard extends StatelessWidget {
  final String id;

  final String imgRoute;

  const ProductCard({
    Key? key,
    required this.imgRoute,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              imgRoute: imgRoute,
              id: id,
            ),
          ),
        ),
        child: Card(
          margin: const EdgeInsets.only(right: 25),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 7,
          // semanticContainer: true,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(cardRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: id,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(cardRadius),
                    child: Center(
                      child: Image(
                        image: AssetImage(imgRoute),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      Text(
                        'Item Name',
                        style: cardTitleStyle,
                      ),
                      Text(
                        'Description',
                        style: descriptionStyle,
                      ),
                    ],
                  ),
                ),
                Text('\$100.00')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
