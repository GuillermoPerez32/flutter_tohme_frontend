import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tohome/blocs/tohome/tohome_cubit.dart';

import 'package:tohome/data/models/product.dart';
import 'package:tohome/presentation/styles/styles.dart';
import 'product_card_widget.dart';

class ProductsCatalog extends StatelessWidget {
  const ProductsCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: pageViewSize,
      child: _MyPageView(),
    );
  }
}

class _MyPageView extends StatelessWidget {
  _MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TohomeCubit, TohomeState>(
      builder: (context, state) {
        return state.when(
          loadingProducts: () => Center(
            child: CircularProgressIndicator(),
          ),
          loadingError: () => Center(
            child: Image(
              image: AssetImage('assets/not_found.png'),
            ),
          ),
          loadedProducts: (products) => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) => ProductCard(
              direction: Axis.vertical,
              product: products[index],
            ),
          ),
        );
      },
    );
  }
}
