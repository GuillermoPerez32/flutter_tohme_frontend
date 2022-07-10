import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tohome/blocs/catalog/catalog_bloc.dart';
import '../models/product_model.dart';
import 'product_card_widget.dart';

class ProductsCatalog extends StatelessWidget {
  const ProductsCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        if (state.products.isEmpty) {
          BlocProvider.of<CatalogBloc>(context).add(GetCatalogEvent());
        }
        return state.products.isEmpty
            ? const Center(
                child: Image(
                  image: AssetImage('assets/not_found.png'),
                  height: 150,
                ),
              )
            : Wrap(
                children: _products(state.products),
              );
      },
    );
  }

  List<Widget> _products(List<Product> products) {
    List<Widget> output = [];
    for (Product product in products) {
      output.add(
        ProductCard(
          img_route: product.image,
          id: product.uuid,
        ),
      );
    }
    return output;
  }
}
