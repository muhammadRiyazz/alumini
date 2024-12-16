import 'dart:convert';
import 'dart:developer';

import 'package:alumni_registration/domain/parking_model.dart';
import 'package:alumni_registration/interface/parking.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_event.dart';
part 'parking_state.dart';
part 'parking_bloc.freezed.dart';

class FetchingBloc extends Bloc<FetchingEvent, FetchingState> {
  FetchingBloc() : super(FetchingState.initial()) {

      on<fetchmeals>((event, emit) async {
      emit(state.copyWith(isLoading: true, parking: null));

      final respo = await fetchmealsdata();
      log(respo.body);

      final jsonData = json.decode(respo.body);

      // Create ParkingData object from JSON
      final mealData = MealResponse.fromJson(jsonData);
      emit(state.copyWith(isLoading: false, mealdata: mealData.data));
    });





    
    on<Fetchparkings>((event, emit) async {
      emit(state.copyWith(isLoading: true, parking: null));

      final respo = await fetchParking();
      log(respo.body);

      final jsonData = json.decode(respo.body);

      // Create ParkingData object from JSON
      final parkingData = ParkingData.fromJson(jsonData);
      emit(state.copyWith(isLoading: false, data: parkingData.data));
    });

    on<Changeyear>((event, emit) async {
      emit(state.copyWith(parking: event.year));
    });
  }
}
