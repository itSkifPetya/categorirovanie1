import 'dart:ui';
import 'ending_screen.dart';
import 'package:searchfield/searchfield.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:get/get.dart';

class FirstCategory extends StatefulWidget {
  const FirstCategory({Key? key}) : super(key: key);

  @override
  State<FirstCategory> createState() => _FirstCategoryState();
}

class _FirstCategoryState extends State<FirstCategory> {
  final themeColor = Colors.white;
  double kilometersSlideValue = 100.0;
  double heightSlideValue = 5;
  int regionIndex = -1;
  int perepraviNK = 0;
  int perevaliNK = 0;
  int canyoniNK = 0;
  bool water = false;

  final containerBorderRadius = const BorderRadius.all(Radius.circular(20));

  @override
  Widget build(BuildContext context) {
    final queryHeight = MediaQuery.of(context).size.height;
    final queryWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
              ),
              Center(
                child: IntrinsicHeight(
                  child: Container(
                      width: 360,
                      decoration: BoxDecoration(
                          borderRadius: containerBorderRadius,
                          color: themeColor),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Район, в котором проходит маршрут',
                                    style: mainTextStyle,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
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
                              child: SearchField(
                                hint: 'Нажмите, чтобы выбрать район',
                                searchInputDecoration: InputDecoration(
                                    prefixIcon: const Icon(
                                        Icons.share_location_rounded),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BlueAccent, width: 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Blue.withOpacity(0.5),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)))),
                                suggestionsDecoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color:
                                      const Color(0xff006FFD).withOpacity(0.1),
                                ),
                                suggestions: SearchFieldSuggestions,
                                onSuggestionTap: (value) {
                                  setState(() {
                                    regionIndex =
                                        SearchFieldSuggestions.indexOf(value);
                                  });
                                  FocusScope.of(context).unfocus();
                                },
                                searchStyle: searchTextStyle,
                                suggestionStyle: searchTextStyle,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Протяжённость маршрута',
                                    style: mainTextStyle,
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    '$kilometersSlideValue км',
                                    style: sliderValueStyle,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 25,
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
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: const Color(0xff006FFD),
                                  activeTickMarkColor: const Color(0xff006FFD),
                                  overlayShape: SliderComponentShape.noOverlay,
                                ),
                                child: Slider(
                                  value: kilometersSlideValue,
                                  min: 100 * 0.75 - 5,
                                  max: 120,
                                  divisions: 100,
                                  onChanged: (double value) {
                                    setState(() {
                                      kilometersSlideValue = double.parse(
                                          (value).toStringAsFixed(1));
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Перепад высот',
                                    style: mainTextStyle,
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    '$heightSlideValue км',
                                    style: sliderValueStyle,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Blue.withOpacity(0.2),
                                      blurRadius: 7,
                                      // offset: Offset(5, 5)
                                    )
                                  ]),
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: const Color(0xff006FFD),
                                  activeTickMarkColor: const Color(0xff006FFD),
                                  overlayShape: SliderComponentShape.noOverlay,
                                ),
                                child: Slider(
                                  value: heightSlideValue,
                                  min: 0,
                                  max: 15,
                                  divisions: 30,
                                  onChanged: (double value) {
                                    setState(() {
                                      heightSlideValue = double.parse((value).toStringAsFixed(1));
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IntrinsicWidth(
                                  child: Container(
                                    height: 80,
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
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          'Переправы Н/К',
                                          style: mainTextStyle,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                if (perepraviNK >= 1) {
                                                  setState(() {
                                                    perepraviNK--;
                                                  });
                                                }
                                              },
                                              style: obstaclesButtonStyle,
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    color: Color(0xff006FFD),
                                                    fontSize: 25,
                                                    fontStyle:
                                                        FontStyle.normal),
                                              ),
                                            ),
                                            Container(
                                                width: 10,
                                                child: Text(
                                                  '$perepraviNK',
                                                  style: sliderValueStyle,
                                                )),
                                            ElevatedButton(
                                              onPressed: () {
                                                if (perepraviNK <= 7) {
                                                  setState(() {
                                                    perepraviNK++;
                                                  });
                                                }
                                              },
                                              style: obstaclesButtonStyle,
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    color: Color(0xff006FFD),
                                                    fontSize: 25,
                                                    fontStyle:
                                                        FontStyle.normal),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                IntrinsicWidth(
                                  child: Container(
                                    height: 80,
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
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          'Перевалы Н/К',
                                          style: mainTextStyle,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                if (perevaliNK >= 1) {
                                                  setState(() {
                                                    perevaliNK--;
                                                  });
                                                }
                                              },
                                              style: obstaclesButtonStyle,
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    color: Color(0xff006FFD),
                                                    fontSize: 25,
                                                    fontStyle:
                                                        FontStyle.normal),
                                              ),
                                            ),
                                            SizedBox(
                                                width: 10,
                                                child: Text(
                                                  '$perevaliNK',
                                                  style: sliderValueStyle,
                                                )),
                                            ElevatedButton(
                                              onPressed: () {
                                                if (perevaliNK <= 1) {
                                                  setState(() {
                                                    perevaliNK++;
                                                  });
                                                }
                                              },
                                              style: obstaclesButtonStyle,
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    color: Color(0xff006FFD),
                                                    fontSize: 25,
                                                    fontStyle:
                                                        FontStyle.normal),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IntrinsicWidth(
                                  child: Container(
                                    height: 80,
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
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          'Каньоны Н/К',
                                          style: mainTextStyle,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                if (canyoniNK >= 1) {
                                                  setState(() {
                                                    canyoniNK--;
                                                  });
                                                }
                                              },
                                                style: obstaclesButtonStyle,
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    color: Color(0xff006FFD),
                                                    fontSize: 25,
                                                    fontStyle:
                                                        FontStyle.normal),
                                              ),
                                            ),
                                            Container(
                                                width: 10,
                                                child: Text(
                                                  '$canyoniNK',
                                                  style: sliderValueStyle,
                                                )),
                                            ElevatedButton(
                                              onPressed: () {
                                                if (canyoniNK <= 3) {
                                                  setState(() {
                                                    canyoniNK++;
                                                  });
                                                }
                                              },
                                              style: obstaclesButtonStyle,
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                    color: Color(0xff006FFD),
                                                    fontSize: 25,
                                                    fontStyle:
                                                        FontStyle.normal),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                num localObstacles = perepraviNK * 0.5 +
                                    perevaliNK * 2.0 +
                                    canyoniNK * 1.0;
                                num extendedObstacles = Kt[regionIndex] *
                                    PP_points[0] *
                                    kilometersSlideValue /
                                    Arr_L[0];
                                if (water == true)
                                  localObstacles += water_points[0];
                                if (localObstacles > LP_points[0])
                                  localObstacles = LP_points[0];
                                final integralRating =
                                    geograficalIndicator[regionIndex] *
                                        (1 + heightSlideValue / 12);
                                int categoryRating = localObstacles.toInt() +
                                    extendedObstacles.toInt() +
                                    integralRating.toInt();
                                Get.to(() => EndingScreen(
                                    categoryRating: categoryRating));
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => EndingScreen(category_rating: category_rating)));
                              },
                              style: ElevatedButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: const Color(0xff006FFD),
                                  onPrimary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  minimumSize: const Size(
                                      double.infinity, double.minPositive + 50),
                                  shadowColor: Colors.transparent),
                              child: const Text(
                                'Готово!',
                                style: buttonTextStyle,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ],
          )),
    );
  }
}
