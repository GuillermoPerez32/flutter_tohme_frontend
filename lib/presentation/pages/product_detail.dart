import 'package:flutter/material.dart';

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
      body: ListView(
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

class _LikeButton extends StatelessWidget {
  const _LikeButton({
    Key? key,
    required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _screenSize.width * .8,
      height: _screenSize.height,
      child: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.thumb_up_alt_outlined,
          color: Colors.grey,
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
        Hero(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                80,
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
        ),
        SizedBox(
          height: _screenSize.height * .5,
        )
      ],
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
