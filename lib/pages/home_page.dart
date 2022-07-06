import 'package:flutter/material.dart';
import 'package:tohome/widgets/products_catalog_widget.dart';

import '../widgets/category_swiper.dart';
import '../widgets/search_settings_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  const Image(
                    image: AssetImage('assets/hamburguesa.jpg'),
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/logo_tohome.jpg'),
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: .3,
                    child: Container(color: Colors.black),
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    CircleAvatar(
                      child: Text("L"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const SearchAndSettings(),
                      const SizedBox(height: 10),
                      const CategorySwiper(),
                      const SizedBox(height: 10),
                      _filter(context),
                      const SizedBox(height: 10),
                      const ProductsCatalog(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _filter(context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Popular",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Ver Todos",
              style: TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
}
