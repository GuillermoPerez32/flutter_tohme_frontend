import 'package:flutter/material.dart';
import 'package:tohome/presentation/styles/colors.dart';
import 'package:tohome/presentation/styles/styles.dart';
import 'package:tohome/presentation/widgets/product_card_widget.dart';
import 'package:tohome/presentation/widgets/products_catalog_widget.dart';

import '../widgets/search_settings_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _MyAppBar(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SearchAndCart(),
                const SizedBox(height: 10),
                _TitleText('Explorar'),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const ProductsCatalog(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TitleText('Best Selled'),
                ProductCard(
                  imgRoute: 'assets/hamburguesa.jpg',
                  id: '600',
                  direction: Axis.horizontal,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  final String text;

  const _TitleText(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
    );
  }
}

class _MyAppBar extends StatelessWidget {
  const _MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_outlined),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.person),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => primary),
            ),
          )
        ],
      ),
    );
  }
}
