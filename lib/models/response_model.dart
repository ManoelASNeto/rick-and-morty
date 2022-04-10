import 'package:rick_and_morty_mobx/models/characters.dart';
import 'package:rick_and_morty_mobx/models/info_model.dart';

class Response {
  Info? info;
  List<Characters>? results;

  Response({
    this.info,
    this.results,
  });

  Response.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    json['results'] != null ? (json['results' as List]).map((e) => Characters.fromJson(e)).toList() : null;
  }
}
