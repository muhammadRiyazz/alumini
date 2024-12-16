import 'package:alumni_registration/application/parking/parking_bloc.dart';
import 'package:alumni_registration/pages/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double textScaleFactor = MediaQuery.of(context).textScaleFactor;

              // Adjust padding and font sizes based on screen width
              bool isLargeScreen = constraints.maxWidth > 800;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'St. Thomas College',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'ALUMINI MEET ',
                    style: TextStyle(
                        fontSize: isLargeScreen ? 36 : 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2024',
                    style: TextStyle(
                        fontSize: isLargeScreen ? 36 : 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    'assets/bg.jpg',
                    width: isLargeScreen ? 400 : 300, // Adjust image size
                    // height: isLargeScreen ? 400 : 300, // Adjust image size
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'December 30 2024',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'St. Thomas College Auditorium',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: isLargeScreen ? 300 : 200, // Adjust button width
                    child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<FetchingBloc>(context)
                            .add(const FetchingEvent.fetchparkings());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RegistrationFormPage();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 12, horizontal: isLargeScreen ? 24 : 12),
                        child: const Text(
                          'Register Now',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
