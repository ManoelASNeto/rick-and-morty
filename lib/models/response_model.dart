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
    info = Info.fromJson(json['info']);
    results =
        List.from(json['results']).map((e) => Characters.fromJson(e)).toList();
  }
}
