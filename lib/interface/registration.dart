import 'dart:convert';
import 'dart:developer';

import 'package:alumni_registration/core/api.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

Future<Response> registaerUser({required Map<String, dynamic> data}) async {
  Response? response;

  final uri = Uri.parse('$baseurl/user-registration');

  try {
    response = await http.post(uri, body: jsonEncode(data));

    log(data.toString());
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
