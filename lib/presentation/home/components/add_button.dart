import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_colors.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              begin: Alignment(-1, 1),
              end: Alignment(-1, -1),
              colors: [
                primaryColor,
                secondaryColor,
              ],
              stops: [
                0.75,
                1
              ]),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFBDACFB),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(0, 8),
            ),
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.37),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, -3),
            ),
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              spreadRadius: 0,
              blurRadius: 15,
              offset: Offset(3, 1),
            ),
          ],
        ),
        child: IconButton(
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ));
  }
}
