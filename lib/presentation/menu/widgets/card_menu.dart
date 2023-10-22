import 'package:flutter/material.dart';
import 'package:hastapos/utils/style.dart';
import 'package:heroicons/heroicons.dart';

class CardMenu extends StatelessWidget {
  String title;
  HeroIcons icon;
  CardMenu({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(10)),
          height: 66,
          width: 66,
          child: HeroIcon(icon, color: Colors.white, size: 32),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          title,
          style: tBody,
        ),
      ],
    );
  }
}
