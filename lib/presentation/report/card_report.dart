import 'package:flutter/material.dart';
import 'package:hastapos/utils/style.dart';
import 'package:heroicons/heroicons.dart';

class CardReport extends StatelessWidget {
  String date;
  String nominal;
  HeroIcons icon;
  Color bgColor;
  Color textColor;
  Color iconColor;

  CardReport({
    super.key,
    required this.date,
    required this.icon,
    required this.nominal,
    required this.bgColor,
    required this.iconColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: 140,
        margin: EdgeInsets.symmetric(vertical: 25, horizontal: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: bgColor.withOpacity(0.2),
                  ),
                  child: HeroIcon(
                    icon,
                    color: iconColor,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  date,
                  style: tBody.copyWith(
                      fontWeight: FontWeight.w600, color: textColor),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              nominal,
              style: titleStyle,
            )
          ],
        ),
      ),
    );
  }
}
