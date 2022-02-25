import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_mobx/models/characters/results_model.dart';

class NetworkService {
  List<AllCharacters> characters = [];

  Future<List<AllCharacters>> getData() async {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      characters = (data['results'] as List).map((json) => AllCharacters.fromJson(json)).toList();
    } else {
      ('Error na URl');
    }
    return characters;
  }
}
