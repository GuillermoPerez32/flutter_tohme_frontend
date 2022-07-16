import 'package:flutter/material.dart';
import 'package:tohome/presentation/styles/colors.dart';
import 'package:tohome/presentation/widgets/products_catalog_widget.dart';

import '../widgets/search_settings_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const _MyAppBar(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const SearchAndCart(),
                const SizedBox(height: 10),
                Text(
                  "Explorar",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const ProductsCatalog(),
        ],
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
