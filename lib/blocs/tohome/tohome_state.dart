part of 'tohome_cubit.dart';

@freezed
abstract class TohomeState with _$TohomeState {
  const factory TohomeState.loadingProducts() = _loadingProducts;
  const factory TohomeState.loadingError() = _LoadingError;
  const factory TohomeState.loadedProducts(List<Product> products) =
      _loadedProducts;
}
