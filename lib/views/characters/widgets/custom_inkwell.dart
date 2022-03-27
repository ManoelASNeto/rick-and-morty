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
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            width: 150,
            height: 150,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          Text('#$id -$name')
        ],
      ),
    );
  }
}
