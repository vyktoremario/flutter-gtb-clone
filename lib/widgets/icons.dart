import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  const IconsWidget(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: icon,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
