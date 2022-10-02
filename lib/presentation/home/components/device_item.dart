import 'package:flutter/material.dart';

class Deviceitem extends StatelessWidget {
  const Deviceitem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.isOn})
      : super(key: key);
  final String title;
  final String subtitle;
  final String image;
  final bool isOn;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [],
        )
      ],
    ));
  }
}
