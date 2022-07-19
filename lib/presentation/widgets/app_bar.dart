import 'package:flutter/material.dart';
import 'package:tohome/presentation/widgets/button_cart.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(_screenSize.height * 0.02),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            ButtonToCart(),
          ],
        ),
      ),
    );
  }
}
