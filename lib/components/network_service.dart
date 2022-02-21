import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_mobx/components/endpoints.dart';
import 'package:rick_and_morty_mobx/models/characters/results_model.dart';

class NetworkService {
  final urlCharacters = Uri.parse((Endpoints.url));
  List<ResultsOne> characters = [];

  Future<List<ResultsOne>> getData(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      characters = (data['results'] as List).map((json) => ResultsOne.fromJson(json)).toList();
    } else {
      print('Error na URl');
    }
    return characters;
  }
}
