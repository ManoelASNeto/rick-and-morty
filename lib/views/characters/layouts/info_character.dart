import 'package:flutter/material.dart';

class InfoCharacters extends StatelessWidget {
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  const InfoCharacters({
    Key? key,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              status,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              species,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              gender,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              type,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
