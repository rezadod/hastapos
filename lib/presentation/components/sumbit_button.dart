import 'package:flutter/material.dart';
import 'package:hastapos/utils/style.dart';

class SubmitButton extends StatelessWidget {
  VoidCallback ontap;
  String title;
  Color color;
  SubmitButton(
      {super.key,
      required this.ontap,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color, shape: StadiumBorder()),
        onPressed: ontap,
        child: Text(
          title,
          style: titleStyle.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
