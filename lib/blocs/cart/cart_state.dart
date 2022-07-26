part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  const factory CartState.addedProduct(List<Product> product) = _AddedProduct;
}
