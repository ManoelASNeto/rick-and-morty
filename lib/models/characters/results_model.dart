class Results {
  List<Results>? results;

  Results({this.results});
}

class ResultsOne {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? image;

  String? url;
  String? created;

  ResultsOne(
      {this.id, this.name, this.status, this.species, this.type, this.gender, this.image, this.url, this.created});

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        image,
        url,
        created,
      ];

  factory ResultsOne.fromJson(Map<String, dynamic> json) => ResultsOne(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        species: json['species'],
        type: json['type'],
        gender: json['gender'],
        image: json['image'],
        url: json['url'],
        created: json['created'],
      );
}
