part of 'parking_bloc.dart';

@freezed
class FetchingState with _$FetchingState {
 factory FetchingState({
    required bool isLoading,
    required    List<YearParking> data,
   required List<Meal> mealdata,
    YearParking? parking
  }) = _OrdersState;
  factory FetchingState.initial() {
    return FetchingState(
      data: [],mealdata: [],
      isLoading: false,
    );
  }}
