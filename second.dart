import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List imagelist = [
    {"id": 1, "image_path": 'assets/images/do.jpg'},
    {"id": 1, "image_path": 'assets/images/o.png'},
    // {"id": 1, "image_path": 'assets/imagesdo.jpg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentindex);
                    },
                    child: CarouselSlider(
                        items: imagelist
                            .map((item) => Image.asset(
                                  item["image_path"],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ))
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentindex = index;
                              });
                            })),
                  ),
                  Positioned(
                      bottom: 10,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imagelist.asMap().entries.map((Entry) {
                            print(Entry);
                            print(Entry.key);
                            return GestureDetector(
                              onTap: () =>
                                  carouselController.animateToPage(Entry.key),
                              child: Container(
                                width: currentindex == Entry.key ? 17 : 7,
                                height: 7.0,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 3.0,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: currentindex == Entry.key
                                        ? Colors.red
                                        : Colors.green),
                              ),
                            );
                          }).toList()))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
