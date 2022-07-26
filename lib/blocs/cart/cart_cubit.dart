import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tohome/data/models/product.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  void addProduct(Product product) => emit(_AddedProduct(product));
}
