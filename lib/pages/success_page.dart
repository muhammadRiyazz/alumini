import 'dart:developer';

import 'package:flutter/material.dart';

class SuccessPageDone extends StatelessWidget {
  const SuccessPageDone({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        log('message');
        return false;
      },
      child: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.done_rounded,
                    size: 45,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Success',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                'ABC Alumni Meet 2024',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const Text(
                '12 March 2024',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
