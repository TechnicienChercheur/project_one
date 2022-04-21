import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_one/composants/homebuilt.dart';
import 'package:project_one/composants/linebutton.dart';
import 'package:project_one/page/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _PageState();
}

class _PageState extends State<Page1> {
  final List<String> imgList = [
    "assets/images/img1.jpeg",
    "assets/images/img2.jpeg",
    "assets/images/img5.webp",
    "assets/images/img4.jpeg",
    "assets/images/img5.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider(
                  items: imgList
                      .map(
                        (item) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                            // width: 1500,
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 200,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        Wrap(
                          runSpacing: 15.0,
                          children: [
                            HomeBull(
                              titre: "Children",
                              titreSize: 20,
                              description1: "Information",
                              description2: "about our establishments",
                              titreColor: Colors.black,
                              descriptionColor: Colors.black,
                              containerColor: Colors.white,
                              iconColor: Colors.black54,
                              borderColor: Colors.purple,
                              cicon: Icons.person,
                              iconSise: 60,
                              widthValue: 200,
                              heightValue: 200,
                              cRadius: 6,
                              /*page,*/
                              context: context,
                              page: Page2(),
                            ),
                            const SizedBox(
                              width: 15,
                              height: 15,
                            ),
                            HomeBull(
                                titre: "Children",
                                titreSize: 20,
                                description1: "Information",
                                description2: "about our establishments",
                                titreColor: Colors.black,
                                descriptionColor: Colors.black,
                                containerColor: Colors.white,
                                iconColor: Colors.black54,
                                borderColor: Colors.purple,
                                cicon: Icons.house,
                                iconSise: 60,
                                widthValue: 200,
                                heightValue: 200,
                                cRadius: 6,
                                /*page,*/ context: context),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 100,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeBull(
                          // titre: "Children",
                          titreSize: 20,
                          // description1: "Information",
                          // description2: "about our establishments",
                          titreColor: Colors.black,
                          descriptionColor: Colors.black,
                          containerColor: Colors.white,
                          iconColor: Colors.black54,
                          borderColor: Colors.purple,
                          cicon: Icons.person,
                          iconSise: 60,
                          widthValue: 100,
                          heightValue: 100,
                          cRadius: 50,
                          context: context,
                          page: const Page2(),
                        ),
                        HomeBull(
                          // titre: "Children",
                          titreSize: 20,
                          // description1: "Information",
                          // description2: "about our establishments",
                          titreColor: Colors.black,
                          descriptionColor: Colors.black,
                          containerColor: Colors.white,
                          iconColor: Colors.black54,
                          borderColor: Colors.purple,
                          cicon: Icons.house,
                          iconSise: 60,
                          widthValue: 100,
                          heightValue: 100,
                          cRadius: 50,
                          context: context,
                          page: const Page2(),
                        ),
                        HomeBull(
                          // titre: "Children",
                          titreSize: 20,
                          // description1: "Information",
                          // description2: "about our establishments",
                          titreColor: Colors.black,
                          descriptionColor: Colors.black,
                          containerColor: Colors.white,
                          iconColor: Colors.black54,
                          borderColor: Colors.purple,
                          cicon: Icons.share,
                          iconSise: 60,
                          widthValue: 100,
                          heightValue: 100,
                          cRadius: 50,
                          context: context,
                          page: const Page2(),
                        ),
                        HomeBull(
                          // titre: "Children",
                          titreSize: 20,
                          // description1: "Information",
                          // description2: "about our establishments",
                          titreColor: Colors.black,
                          descriptionColor: Colors.black,
                          containerColor: Colors.white,
                          iconColor: Colors.black54,
                          borderColor: Colors.purple,
                          cicon: Icons.work,
                          iconSise: 60,
                          widthValue: 100,
                          heightValue: 100,
                          cRadius: 50,
                          /*page,*/
                          context: context,
                          page: Page2(),
                        ),
                        HomeBull(
                          // titre: "Children",
                          titreSize: 20,
                          // description1: "Information",
                          // description2: "about our establishments",
                          titreColor: Colors.black,
                          descriptionColor: Colors.black,
                          containerColor: Colors.white,
                          iconColor: Colors.black54,
                          borderColor: Colors.purple,
                          cicon: Icons.work,
                          iconSise: 60,
                          widthValue: 100,
                          heightValue: 100,
                          cRadius: 50,
                          /*page,*/
                          context: context,
                          page: Page2(),
                        ),
                      ],
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(),
                LineButton(Icons.keyboard_arrow_right, "Cliquez pour continuer",
                    20, context, const Page2()),
                const Divider(),
                LineButton(Icons.keyboard_arrow_right, "Cliquez pour continuer",
                    20, context, const Page2()),
                const Divider(),
                LineButton(Icons.keyboard_arrow_right, "Cliquez pour continuer",
                    20, context, const Page2()),
                const Divider(),
                LineButton(
                  Icons.keyboard_arrow_right,
                  "Cliquez pour continuer",
                  20,
                  context,
                  const Page2(),
                ),
                const Divider(),
                LineButton(
                  Icons.keyboard_arrow_right,
                  "Cliquez pour continuer",
                  20,
                  context,
                  const Page2(),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
