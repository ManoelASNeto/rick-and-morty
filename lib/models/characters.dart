import 'package:rick_and_morty_mobx/models/location.dart';
import 'package:rick_and_morty_mobx/models/origin.dart';

class Characters {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? image;
  String? url;
  String? created;
  Origin? origin;
  Location? location;

  Characters({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
    this.url,
    this.created,
    this.origin,
    this.location,
  });

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        species: json['species'],
        type: json['type'],
        gender: json['gender'],
        image: json['image'],
        url: json['url'],
        created: json['created'],
        origin: Origin.fromJson(json['origin']),
        location: Location.fromJson(json['location']),
      );
}
