import 'package:flutter/material.dart';
import 'package:tohome/presentation/styles/colors.dart';
import 'package:tohome/presentation/styles/styles.dart';

class ProductDetailPage extends StatelessWidget {
  final String imgRoute;
  final String id;

  const ProductDetailPage({
    Key? key,
    required this.imgRoute,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              _Body(imgRoute: imgRoute, screenSize: _screenSize, id: id),
              const _AppBar(),
              _LikeButton(screenSize: _screenSize),
            ],
          ),
        ],
      ),
    );
  }
}

class _LikeButton extends StatefulWidget {
  const _LikeButton({
    Key? key,
    required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;

  @override
  State<_LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<_LikeButton> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget._screenSize.width * .8,
      top: widget._screenSize.height * .46,
      child: FloatingActionButton(
        onPressed: () => setState(
          () {
            liked = !liked;
          },
        ),
        child: Icon(
          !liked ? Icons.thumb_up_alt_outlined : Icons.thumb_up_alt_sharp,
          color: !liked ? Colors.grey : Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.imgRoute,
    required Size screenSize,
    required this.id,
  })  : _screenSize = screenSize,
        super(key: key);

  final String imgRoute;
  final Size _screenSize;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        _ProductImage(imgRoute: imgRoute, screenSize: _screenSize, id: id),
        _ProductDescription(screenSize: _screenSize),
        _BottomButton(screenSize: _screenSize),
      ],
    );
  }
}

class _BottomButton extends StatelessWidget {
  const _BottomButton({
    Key? key,
    required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: _screenSize.height * .1,
          width: _screenSize.width * .55,
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  'Add to Cart',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
            style: TextButton.styleFrom(
              minimumSize: Size.infinite,
              backgroundColor: primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ProductDescription extends StatelessWidget {
  const _ProductDescription({
    Key? key,
    required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _screenSize.height * .4,
      child: Padding(
        padding: EdgeInsets.all(_screenSize.height * .03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$100.00',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hamburguesa',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                _Rating(),
              ],
            ),
            SizedBox(
              height: _screenSize.height * .25,
              child: ListView(
                children: [
                  Text(
                    'sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor sdsd gthe ieorm werim ewrimwe iomer iweriwer ewirweor ',
                    style: descriptionStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Rating extends StatelessWidget {
  const _Rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('rating');
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({
    Key? key,
    required this.imgRoute,
    required Size screenSize,
    required this.id,
  })  : _screenSize = screenSize,
        super(key: key);

  final String imgRoute;
  final Size _screenSize;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Hero(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            50,
          ),
        ),
        child: Image(
          image: AssetImage(imgRoute),
          height: _screenSize.height * .5,
          width: _screenSize.width,
          fit: BoxFit.cover,
        ),
      ),
      tag: id,
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ],
    );
  }
}
