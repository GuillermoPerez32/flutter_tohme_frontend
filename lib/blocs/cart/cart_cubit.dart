import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tohome/data/models/product.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<List<Product>> {
  CartCubit() : super([]);

  void addProduct(Product product) => emit(state..add(product));
  void removeProduct(Product product) => emit(state..remove(product));
}
