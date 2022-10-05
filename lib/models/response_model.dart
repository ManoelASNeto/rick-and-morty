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
    if (json['results'] != null) {
      results = <Characters>[];
      json['results'].forEach((v) {
        results!.add(Characters.fromJson(v));
      });
    }
  }
}
