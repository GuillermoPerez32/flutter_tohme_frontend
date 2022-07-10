import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tohome/blocs/catalog/catalog_bloc.dart';

class SearchAndSettings extends StatelessWidget {
  final double _radius = 10;

  const SearchAndSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_radius)),
            color: Colors.white,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Buscar...",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            // width: 400,
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 50,
          child: BlocBuilder<CatalogBloc, CatalogState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.settings),
              );
            },
          ),
        ),
      ],
    );
  }
}
