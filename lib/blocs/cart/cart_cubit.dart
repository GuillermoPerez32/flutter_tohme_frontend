import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tohome/data/models/cart_product.dart';
import 'package:tohome/data/models/product.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<List<CartProduct>> {
  CartCubit() : super([]);

  void addProduct(CartProduct product) => emit(state..add(product));
  void removeProduct(CartProduct product) => emit(state..remove(product));
}
