import 'package:alumni_registration/application/providers.dart';
import 'package:alumni_registration/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(17, 55, 127, 1),
          fontFamily: 'Montserrat',
        ),
        home: const SplashPage(),
      ),
    );
  }
}



EdgeInsets getPadding(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width > 600) {
    return const EdgeInsets.symmetric(horizontal: 80, vertical: 20);
  } else {
    return const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  }
}
