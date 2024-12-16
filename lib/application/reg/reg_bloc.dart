import 'dart:convert';
import 'dart:developer';

import 'package:alumni_registration/interface/registration.dart';
import 'package:alumni_registration/interface/update.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reg_event.dart';
part 'reg_state.dart';
part 'reg_bloc.freezed.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  RegBloc() : super(RegState.initial()) {
    String id = '';
    on<Reg>((event, emit) async {
      try {
        emit(state.copyWith(
            isLoading: true, registerd: false, id: null, done: false));

        final respo = await registaerUser(data: event.data);
        log(respo.body);

        final jsonData = json.decode(respo.body);
        id = jsonData['user'].toString();
        if (jsonData['status'] == 'success') {
          emit(state.copyWith(
            isLoading: false,
            registerd: true,
            id: jsonData['user'].toString(),
          ));
        }
      } catch (e) {
        log(e.toString());

        emit(state.copyWith(
          isLoading: false,
        ));
      }

      // // Create ParkingData object from JSON
      // final parkingData = ParkingData.fromJson(jsonData);
      // emit(state.copyWith(isLoading: false, data: parkingData.data));
    });

    on<Updatefood>((event, emit) async {
      try {
        log('Updatefood');
        log(id);
        emit(state.copyWith(
          isLoading: true,
          registerd: false,
          done: false,
        ));

        final respo =
            await updatefood(data: event.data, id: id, img: event.img);
        log(respo.body);

        final jsonData = json.decode(respo.body);

        if (jsonData['status'] == 'success') {
          emit(state.copyWith(
            isLoading: false,
            done: true,
          ));
        }
      } catch (e) {
        emit(state.copyWith(
          isLoading: false,
        ));
        log(e.toString());
      }
    });

    on<Updatememento>((event, emit) async {
      try {
        log('Updatememento');
        log(state.id!);
        emit(state.copyWith(isLoading: true, done: false, registerd: false));

        final respo = await updatememento(id: id, img: event.img);
        log(respo.body);

        final jsonData = json.decode(respo.body);

        if (jsonData['status'] == 'success') {
          emit(state.copyWith(
            isLoading: false,
            done: true,
          ));
        }
      } catch (e) {
        emit(state.copyWith(
          isLoading: false,
        ));
        log(e.toString());
      }
    });
  }
}
