import 'package:flutter/material.dart';

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
        children: const [
          CategoryCard(selected: true),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final bool selected;

  const CategoryCard({
    Key? key,
    this.selected = false,
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
        contentPadding: EdgeInsets.all(0),
        onTap: () {},
        horizontalTitleGap: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.fastfood,
              color: Colors.black,
            ),
            Text('Comida',
                style: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
