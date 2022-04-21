import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_one/composants/homebuilt.dart';
import 'package:project_one/page/page.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _PageState();
}

class _PageState extends State<Page2> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const Page1(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/android.png",
              ),
              const SizedBox(
                height: 25,
              ),
              const CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}


// SingleChildScrollView(
//       child: Center(
//         child: Wrap(
//           children: [
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CarouselSlider(
//                   items: imgList
//                       .map(
//                         (item) => Container(
//                           child: Center(
//                             child: Image.asset(
//                               item,
//                               fit: BoxFit.cover,
//                               // width: 1500,
//                             ),
//                           ),
//                         ),
//                       )
//                       .toList(),
//                   options: CarouselOptions(
//                     autoPlayInterval: const Duration(seconds: 2),
//                     autoPlay: true,
//                     aspectRatio: 2.0,
//                     enlargeCenterPage: true,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 HomeBull(
//                     titre: "Children",
//                     titreSize: 20,
//                     description1: "Information",
//                     description2: "about our establishments",
//                     titreColor: Colors.black,
//                     descriptionColor: Colors.white,
//                     containerColor: Colors.black54,
//                     iconColor: Colors.white,
//                     borderColor: Colors.black54,
//                     cicon: Icons.person,
//                     iconSise: 40,
//                     widthValue: 200,
//                     heightValue: 200,
//                     cRadius: 6,
//                     /*page,*/ context: context),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 HomeBull(
//                     titre: "Children",
//                     titreSize: 20,
//                     description1: "Information",
//                     description2: "about our establishments",
//                     titreColor: Colors.black,
//                     descriptionColor: Colors.white,
//                     containerColor: Colors.black54,
//                     iconColor: Colors.white,
//                     borderColor: Colors.black54,
//                     cicon: Icons.person,
//                     iconSise: 40,
//                     widthValue: 200,
//                     heightValue: 200,
//                     cRadius: 6,
//                     /*page,*/ context: context),
//                 HomeBull(
//                     titre: "Children",
//                     titreSize: 20,
//                     description1: "Information",
//                     description2: "about our establishments",
//                     titreColor: Colors.black,
//                     descriptionColor: Colors.white,
//                     containerColor: Colors.black54,
//                     iconColor: Colors.white,
//                     borderColor: Colors.black54,
//                     cicon: Icons.person,
//                     iconSise: 40,
//                     widthValue: 200,
//                     heightValue: 200,
//                     cRadius: 6,
//                     /*page,*/ context: context),
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 HomeBull(
//                     titre: "Children",
//                     titreSize: 20,
//                     description1: "Information",
//                     description2: "about our establishments",
//                     titreColor: Colors.black,
//                     descriptionColor: Colors.white,
//                     containerColor: Colors.black54,
//                     iconColor: Colors.white,
//                     borderColor: Colors.black54,
//                     cicon: Icons.person,
//                     iconSise: 40,
//                     widthValue: 200,
//                     heightValue: 200,
//                     cRadius: 6,
//                     /*page,*/ context: context),
//               ],
//             ),
//           ],
//         ),
//       ),
//     )
