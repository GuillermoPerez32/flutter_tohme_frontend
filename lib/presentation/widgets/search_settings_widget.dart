import 'package:flutter/material.dart';

class SearchAndCart extends StatelessWidget {
  final double _radius = 10;

  final TextEditingController _searchController = TextEditingController();

  SearchAndCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: _screenSize.width * .70,
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_radius),
                side: BorderSide.none,
              ),
              color: Colors.white,
              child: TextField(
                controller: _searchController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Buscar...",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 16, 16, 22),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => _searchController.text = '',
                    icon: const Icon(
                      Icons.clear,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('cart'),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
