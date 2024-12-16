import 'dart:developer';

import 'package:alumni_registration/core/api.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

Future<Response> fetchParking() async {
  Response? response;

  final uri = Uri.parse('$baseurl/parking_data');

  try {
    response = await http.post(uri);
    if (response.statusCode == 200) {
      return response;
    } else {
      log('Error: ${response.statusCode}');
      return response;
    }
  } catch (e) {
    log('Exception: $e');
    rethrow; // Optionally rethrow to propagate the error further
  }
}


Future<Response> fetchmealsdata() async {
  Response? response;

  final uri = Uri.parse('$baseurl/meal_data');

  try {
    response = await http.post(uri);
    if (response.statusCode == 200) {
      return response;
    } else {
      log('Error: ${response.statusCode}');
      return response;
    }
  } catch (e) {
    log('Exception: $e');
    rethrow; // Optionally rethrow to propagate the error further
  }
}