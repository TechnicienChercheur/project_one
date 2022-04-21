import 'package:flutter/material.dart';

GestureDetector LineButton(
  IconData? nameIcon2,
  String? myText,
  double? tailleImage,
  context,
  Widget? page,
) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => page!),
      );
    },
    child: Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/android.png",
            height: tailleImage,
            width: tailleImage,
          ),
          Text(myText == null ? "" : myText),
          Icon(nameIcon2)
        ],
      ),
    ),
  );
}
