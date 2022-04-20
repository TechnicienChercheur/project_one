import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_one/composants/homebuilt.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _PageState();
}

class _PageState extends State<Page1> {
  final List<String> imgList = [
    "assets/images/img1.jpeg",
    "assets/images/img2.jpeg",
    "assets/images/img3.webp",
    "assets/images/img4.jpeg",
    "assets/images/img5.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Wrap(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  items: imgList
                      .map(
                        (item) => Container(
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              // width: 1500,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                HomeBull(
                    titre: "Children",
                    titreSize: 20,
                    description1: "Information",
                    description2: "about our establishments",
                    titreColor: Colors.black,
                    descriptionColor: Colors.white,
                    containerColor: Colors.black54,
                    iconColor: Colors.white,
                    borderColor: Colors.black54,
                    cicon: Icons.person,
                    iconSise: 40,
                    widthValue: 200,
                    heightValue: 200,
                    cRadius: 6,
                    /*page,*/ context: context),
                const SizedBox(
                  width: 15,
                ),
                HomeBull(
                    titre: "Children",
                    titreSize: 20,
                    description1: "Information",
                    description2: "about our establishments",
                    titreColor: Colors.black,
                    descriptionColor: Colors.white,
                    containerColor: Colors.black54,
                    iconColor: Colors.white,
                    borderColor: Colors.black54,
                    cicon: Icons.person,
                    iconSise: 40,
                    widthValue: 200,
                    heightValue: 200,
                    cRadius: 6,
                    /*page,*/ context: context),
                HomeBull(
                    titre: "Children",
                    titreSize: 20,
                    description1: "Information",
                    description2: "about our establishments",
                    titreColor: Colors.black,
                    descriptionColor: Colors.white,
                    containerColor: Colors.black54,
                    iconColor: Colors.white,
                    borderColor: Colors.black54,
                    cicon: Icons.person,
                    iconSise: 40,
                    widthValue: 200,
                    heightValue: 200,
                    cRadius: 6,
                    /*page,*/ context: context),
                const SizedBox(
                  width: 15,
                ),
                HomeBull(
                    titre: "Children",
                    titreSize: 20,
                    description1: "Information",
                    description2: "about our establishments",
                    titreColor: Colors.black,
                    descriptionColor: Colors.white,
                    containerColor: Colors.black54,
                    iconColor: Colors.white,
                    borderColor: Colors.black54,
                    cicon: Icons.person,
                    iconSise: 40,
                    widthValue: 200,
                    heightValue: 200,
                    cRadius: 6,
                    /*page,*/ context: context),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
