import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tohome/blocs/cart/cart_cubit.dart';
import 'package:tohome/data/models/product.dart';
import 'package:tohome/presentation/pages/product_detail.dart';
import 'package:tohome/presentation/styles/styles.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Axis direction;

  const ProductCard({
    Key? key,
    required this.product,
    required this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              product: product,
            ),
          ),
        ),
        child: direction == Axis.vertical
            ? SizedBox(
                width: pageViewSize * .75,
                child: _myCard(context),
              )
            : _myCard(context),
      ),
    );
  }

  List<Widget> _cardContent(context) => [
        Hero(
          tag: product.uuid,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(cardRadius),
            child: Center(
              child: Image(
                image: AssetImage(product.image),
                fit: BoxFit.cover,
                height:
                    direction == Axis.horizontal ? bestSelledSize - 20 : null,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Item Name',
                    style: cardTitleStyle,
                  ),
                  Text(
                    'Description',
                    style: descriptionStyle,
                  ),
                  // Expanded(child: SizedBox()),
                  Text('\$100.00')
                ],
              ),
              IconButton(
                onPressed: () =>
                    BlocProvider.of<CartCubit>(context).addProduct(product),
                icon: Icon(Icons.add_shopping_cart_outlined),
              ),
            ],
          ),
        ),
      ];

  _myCard(context) => Card(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 7,
        // semanticContainer: true,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: direction == Axis.vertical
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _cardContent(context),
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _cardContent(context),
                ),
        ),
      );
}
