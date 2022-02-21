class ResultsOne {
  List<Results>? results;

  ResultsOne({this.results});

  ResultsOne.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  Results({
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
  });

  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        name: json["name"],
        status: json["status"],
        species: json["species"],
        gender: json["gender"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "status": status,
        "species": species,
        "gender": gender,
        "image": image,
      };
}
