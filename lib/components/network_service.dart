import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_mobx/models/response_model.dart';

class NetworkService {
  Response? results;

  Future<Response> getData() async {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final end = Response.fromJson(
        jsonDecode(
          utf8.decode(response.bodyBytes),
        ),
      );
      return end;
    } else {
      throw Exception();
    }
  }

  Future<Response> nextPage(String? url) async {
    final response = await http.get(Uri.parse(url ?? 'https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final next = Response.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return next;
    } else {
      throw Exception();
    }
  }

  Future<Response> prevPage(String? url) async {
    final response = await http.get(Uri.parse(url ?? 'https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final prev = Response.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      return prev;
    } else {
      throw Exception();
    }
  }
}
