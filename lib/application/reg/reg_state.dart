part of 'reg_bloc.dart';

@freezed
class RegState with _$RegState {
  factory RegState({
    required bool isLoading,
    required bool registerd,    required bool done,

    String? id,
  }) = _OrdersState;
  factory RegState.initial() {
    return RegState(isLoading: false, registerd: false,done: false);
  }
}
