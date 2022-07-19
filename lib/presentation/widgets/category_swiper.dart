import 'package:flutter/material.dart';

import '../../data/models/product.dart';

class CategorySwiper extends StatelessWidget {
  const CategorySwiper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: PageView(
          pageSnapping: false,
          controller: PageController(
            initialPage: 1,
            viewportFraction: .32,
          ),
          children: _getCategories([]),
        ));
  }

  List<Widget> _getCategories(List<Product> products) {
    List<Widget> cards = [];
    List<int> categories = [];
    for (Product product in products) {
      categories.addAll(product.categories);
    }
    categories = categories.toSet().toList();
    for (int category in categories) {
      cards.add(CategoryCard(text: category.toString()));
    }
    return cards;
  }
}

class CategoryCard extends StatelessWidget {
  final bool selected;

  final String text;

  const CategoryCard({
    Key? key,
    this.selected = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: ListTile(
        selected: selected,
        contentPadding: const EdgeInsets.all(0),
        onTap: () {},
        horizontalTitleGap: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.fastfood,
              color: Colors.black,
            ),
            Text(text,
                style: const TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
