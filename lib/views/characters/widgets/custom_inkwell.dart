import 'package:flutter/material.dart';

class CustomInkwell extends StatelessWidget {
  final String image;
  final String name;
  final int id;
  final VoidCallback onTap;
  const CustomInkwell({
    Key? key,
    required this.image,
    required this.name,
    required this.id,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Image.network(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            '#$id -$name',
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
