part of 'tohome_cubit.dart';

@freezed
abstract class TohomeState with _$TohomeState {
  const factory TohomeState.initial() = _Initial;

  const factory TohomeState.loadingProducts() = _loadingProducts;
}
