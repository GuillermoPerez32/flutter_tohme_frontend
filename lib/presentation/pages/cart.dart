import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tohome/blocs/cart/cart_cubit.dart';
import 'package:tohome/data/models/product.dart';
import 'package:tohome/presentation/styles/colors.dart';
import 'package:tohome/presentation/widgets/app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _CartList(),
          _CheckoutMenu(),
        ],
      ),
    );
  }
}

class _CheckoutMenu extends StatelessWidget {
  const _CheckoutMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    const topBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(50),
      topRight: Radius.circular(50),
    );
    return Card(
      borderOnForeground: true,
      shadowColor: Colors.black,
      semanticContainer: true,
      color: Colors.grey[400],
      shape: const RoundedRectangleBorder(
        borderRadius: topBorderRadius,
      ),
      surfaceTintColor: Colors.black,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.zero,
      elevation: 60,
      child: Container(
        height: _screenSize.height * .30,
        width: _screenSize.width,
        child: ClipRRect(
          borderRadius: topBorderRadius,
          child: Padding(
            padding: EdgeInsets.only(
              top: 32,
              right: 32,
              left: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _CheckoutElement(name: 'Selected items', price: '\$100.00'),
                _CheckoutElement(name: 'Shipping Fee', price: '\$10.00'),
                Divider(),
                Spacer(),
                _CheckoutElement(
                  name: 'Subtotal',
                  price: '\$110.00',
                  bold: true,
                  big: true,
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text('Checkout'),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(25),
                    primary: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CheckoutElement extends StatelessWidget {
  final String name;

  final String price;

  final bool bold;

  final bool big;

  const _CheckoutElement({
    Key? key,
    required this.name,
    required this.price,
    this.bold = false,
    this.big = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            fontSize: big ? 25 : 17,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            color: Colors.pink,
            fontSize: big ? 25 : 17,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class _CartList extends StatelessWidget {
  const _CartList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return SizedBox(
        height: _screenSize.height * .6,
        width: _screenSize.width,
        child: BlocBuilder<CartCubit, List<Product>>(
          builder: (context, products) {
            // TODO: implement listener
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return _CartElement(product: products[index]);
              },
            );
          },
        ));
  }
}

class _CartElement extends StatelessWidget {
  const _CartElement({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: true,
      onChanged: (bool? value) {},
      activeColor: Colors.pink,
      secondary: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage(product.image),
          height: 90,
        ),
      ),
      title: Text(product.name),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${product.price}',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              )),
          OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.exposure_minus_1,
                  ),
                ),
                Text('25'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          )
        ],
      ),
      enableFeedback: true,
      visualDensity: VisualDensity.comfortable,
    );
  }
}
