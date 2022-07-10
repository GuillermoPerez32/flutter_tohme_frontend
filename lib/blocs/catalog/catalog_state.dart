part of 'catalog_bloc.dart';

class CatalogState {
  final List<Product> products;
  final bool loaded;

  CatalogState({
    required this.products,
    required this.loaded,
  });
}
