// jock_api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class JockApiService {
  Future<Map<String, dynamic>> fetchJoke() async {
    final response = await http.get(Uri.parse('https://v2.jokeapi.dev/joke/Dark'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load joke: ${response.statusCode}');
    }
  }
}
