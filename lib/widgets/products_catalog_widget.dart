import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/catalog_bloc.dart';
import '../models/product_model.dart';
import 'product_card_widget.dart';

class ProductsCatalog extends StatelessWidget {
  const ProductsCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        BlocProvider.of<CatalogBloc>(context).add(GetCatalogEvent());
        return Wrap(
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
