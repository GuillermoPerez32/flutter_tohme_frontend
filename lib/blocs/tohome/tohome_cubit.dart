import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tohome/data/repositories/tohome.dart';

part 'tohome_state.dart';
part 'tohome_cubit.freezed.dart';

class TohomeCubit extends Cubit<TohomeState> {
  TohomeCubit(this.repository) : super(const TohomeState.initial());

  final ToHomeRepository repository;
}
