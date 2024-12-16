import 'package:alumni_registration/application/parking/parking_bloc.dart';
import 'package:alumni_registration/application/reg/reg_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

blocProviders() {
  return [
    BlocProvider(
      create: (context) => FetchingBloc(),
    ),
    BlocProvider(
      create: (context) => RegBloc(),
    ),
  ];
}
