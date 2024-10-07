import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class RestApiController extends GetxController {
  Future<List<dynamic>> getUserData() async { // Change return type to List<dynamic>
    var data;
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      if (response.statusCode == 200) {
        data = jsonDecode(response.body);
        return data; // Return the data
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Failed to load users: $e');
    }
  }
}
