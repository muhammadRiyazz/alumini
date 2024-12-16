part of 'parking_bloc.dart';

@freezed
class FetchingEvent with _$FetchingEvent {
  const factory FetchingEvent.changeyear({ required YearParking year}) = Changeyear;
    const factory FetchingEvent.fetchparkings() = Fetchparkings;
        const factory FetchingEvent.fetchmeals() = fetchmeals;


}