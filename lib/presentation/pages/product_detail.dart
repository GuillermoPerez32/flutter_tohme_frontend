import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String imgRoute;
  final String id;

  const ProductDetailPage({
    Key? key,
    required this.imgRoute,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Hero(
                    child: Image(image: AssetImage(imgRoute)),
                    tag: id,
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
