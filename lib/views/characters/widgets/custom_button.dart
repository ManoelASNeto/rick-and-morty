import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? iconMDI;
  final String? text;
  const CustomButton(
      {Key? key,
      required this.onTap,
      required this.iconMDI,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text!,
          style: const TextStyle(
              fontFamily: 'Horror', fontSize: 30, color: Colors.white),
        ),
        IconButton(
          onPressed: onTap,
          icon: iconMDI!,
          color: Colors.white,
          iconSize: 80,
        ),
      ],
    );
  }
}
