import 'package:flutter/material.dart';
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
    return Container(
      child: Card(
        borderOnForeground: true,
        shadowColor: Colors.black,
        semanticContainer: true,
        color: Colors.grey[300],
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
            child: Container(
              padding: EdgeInsets.only(),
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Selected Items',
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
    return Container(
      color: Colors.blueGrey,
      height: _screenSize.height * .5,
      width: _screenSize.width,
      child: ListView(
        children: [],
      ),
    );
  }
}
