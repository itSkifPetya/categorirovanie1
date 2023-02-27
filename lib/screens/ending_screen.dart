import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class EndingScreen extends StatefulWidget {
  const EndingScreen({Key? key, required this.categoryRating})
      : super(key: key);
  final categoryRating;

  @override
  State<EndingScreen> createState() => _EndingScreenState();
}

class _EndingScreenState extends State<EndingScreen> {
  final themeColor = Colors.white;
  final containerBorderRadius = const BorderRadius.all(Radius.circular(20));
  late String slovo;
  int category = 0;

  @override
  Widget build(BuildContext context) {
    final categoryRating = widget.categoryRating;
    slovo = Slovo(categoryRating: categoryRating);
    category = Category(categoryRating: categoryRating);
    final queryHeight = MediaQuery.of(context).size.height;
    final queryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: queryWidth,
          height: queryHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        Center(
          child: IntrinsicHeight(
            child: Container(
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: containerBorderRadius, color: themeColor),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Color(0xff006FFD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Get.back();
                                // Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_sharp,
                                color: Colors.white,
                              ),
                              style: IconButton.styleFrom(),
                            ),
                          ),
                          const Text(
                            'Категорирование',
                            style: mainHeaderStyle,
                          ),
                          const SizedBox(
                            width: 40,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Набранные маршрутом баллы:",
                              style: mainTextStyle,
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Blue.withOpacity(0.2),
                                        blurRadius: 7,
                                        // offset: Offset(5, 5)
                                      )
                                    ]),
                                child: Center(
                                  child: Text(
                                    "$categoryRating",
                                    style: sliderValueStyle,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Категория сложности: ",
                              style: mainTextStyle,
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Blue.withOpacity(0.2),
                                        blurRadius: 7,
                                        // offset: Offset(5, 5)
                                      )
                                    ]),
                                child: Center(
                                  child: Text(
                                    "$category",
                                    style: sliderValueStyle,
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ],
    ));
  }
}

int Category({required int categoryRating}) {
  late int category;
  if (categoryRating >= 7 && categoryRating <= 20) {
    category = 1;
  }
  else if (categoryRating >= 21 && categoryRating <= 59) {
    category = 2;
  }
  else if (categoryRating >= 60 && categoryRating <= 94) {
    category = 3;
  }
  else if (categoryRating >= 95 && categoryRating <= 134) {
    category = 4;
  }
  else if (categoryRating >= 135 && categoryRating <= 184) {
    category = 5;
  }
  else if (categoryRating >= 185) {
    category = 6;
  }
  return category;
}

String Slovo({required int categoryRating}) {
  String slovo = '';
  if (categoryRating >= 5 && categoryRating <= 20 ||
      categoryRating % 10 >= 5 && categoryRating % 10 <= 9 ||
      categoryRating % 10 == 0) {
    slovo = 'баллов';
  } else if (categoryRating % 10 >= 2 && categoryRating % 10 <= 4) {
    slovo = 'балла';
  } else {
    slovo = 'балл';
  }
  return slovo;
}
