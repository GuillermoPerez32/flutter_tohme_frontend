import 'package:flutter/material.dart';

class ButtonToCart extends StatelessWidget {
  const ButtonToCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pushNamed('cart'),
      icon: const Icon(Icons.shopping_cart_outlined),
    );
  }
}
