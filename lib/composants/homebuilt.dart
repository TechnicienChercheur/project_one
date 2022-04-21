import 'package:flutter/material.dart';

GestureDetector HomeBull({
  String? titre,
  double? titreSize,
  String? description1,
  String? description2,
  Color? titreColor,
  Color? descriptionColor,
  Color? containerColor,
  Color? iconColor,
  Color? borderColor,
  IconData? cicon,
  double? iconSise,
  double? widthValue,
  double? heightValue,
  double? cRadius,
  Widget? page,
  context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => page!),
      );
    },
    child: Container(
      height: widthValue,
      width: widthValue,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor!),
        borderRadius: BorderRadius.circular(cRadius!),
        color: containerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            cicon,
            size: iconSise,
            color: iconColor,
          ),
          Visibility(
            visible: titre == null ? false : true,
            child: Text(
              titre == null ? "" : titre,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: titreSize,
                  color: titreColor),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Visibility(
            visible: description1 == null ? false : true,
            child: Text(
              description1 == null ? "" : description1,
              style: TextStyle(
                  fontWeight: FontWeight.w300, color: descriptionColor),
            ),
          ),
          Visibility(
            visible: description1 == null ? false : true,
            child: Text(description2 == null ? "" : description2,
                style: TextStyle(
                    fontWeight: FontWeight.w300, color: descriptionColor)),
          )
        ],
      ),
    ),
  );
}
