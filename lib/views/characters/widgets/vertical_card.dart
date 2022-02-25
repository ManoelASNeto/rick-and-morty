import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class VerticalCard extends StatelessWidget {
  final String image;
  final String name;
  final String status;
  const VerticalCard({
    Key? key,
    required this.image,
    required this.name,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [name];
    final List<Widget> images = [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
      )
    ];
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: VerticalCardPager(
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              onSelectedItem: (index) {},
              initialPage: 0,
              align: ALIGN.CENTER,
            ),
          )
        ],
      )),
    );
  }
}
