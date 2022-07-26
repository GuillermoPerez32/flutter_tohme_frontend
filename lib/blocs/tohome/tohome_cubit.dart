import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tohome/data/models/product.dart';
import 'package:tohome/data/repositories/tohome.dart';

part 'tohome_state.dart';
part 'tohome_cubit.freezed.dart';

class TohomeCubit extends Cubit<TohomeState> {
  TohomeCubit() : super(const TohomeState.loadingProducts());

  void getProducts() async {
    try {
      final products = await toHomeRepository.getProducts();
      emit(_loadedProducts(products));
    } on Exception catch (e) {
      // TODO
      emit(_LoadingError());
    }
  }

  final ToHomeRepository toHomeRepository = ToHomeRepository();
}
