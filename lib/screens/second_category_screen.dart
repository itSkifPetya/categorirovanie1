import 'dart:ui';
import 'package:searchfield/searchfield.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'ending_screen.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:get/get.dart';

class SecondCategory extends StatelessWidget {
  const SecondCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back.jpg'), fit: BoxFit.cover)),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: Obstacles2ks()),
      ),
    );
  }
}

class Obstacles2ks extends StatefulWidget {
  const Obstacles2ks({Key? key}) : super(key: key);

  @override
  State<Obstacles2ks> createState() => _Obstacles2ksState();
}

class _Obstacles2ksState extends State<Obstacles2ks> {
  double kilometersSlideValue = 120.0;
  double heightSlideValue = 5;
  int regionIndex = -1;
  int perepraviNK = 0;
  int perepravi1A = 0;
  int perevaliNK = 0;
  int perevali1A = 0;
  int vershiniNK = 0;
  int grebniNK = 0;
  int canyoniNK1A = 0;
  bool water = false;
  int category = 2 - 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 650,
          width: 360,
          decoration: const BoxDecoration(
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                        prefixIcon: const Icon(Icons.share_location_rounded),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: BlueAccent, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Blue.withOpacity(0.5),
                              width: 1,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)))),
                    suggestionsDecoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: const Color(0xff006FFD).withOpacity(0.1),
                    ),
                    suggestions: SearchFieldSuggestions,
                    onSuggestionTap: (value) {
                      setState(() {
                        regionIndex = SearchFieldSuggestions.indexOf(value);
                      });
                      FocusScope.of(context).unfocus();
                    },
                    searchStyle: searchTextStyle,
                    suggestionStyle: searchTextStyle,
                  ),
                ),
                SizedBox(
                  height: 424,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
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
                            min: 120 * 0.75 - 5,
                            max: 140,
                            divisions: 110,
                            onChanged: (double value) {
                              setState(() {
                                kilometersSlideValue =
                                    double.parse((value).toStringAsFixed(1));
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
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
                                heightSlideValue =
                                    double.parse((value).toStringAsFixed(1));
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
                                              fontStyle: FontStyle.normal),
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
                                              fontStyle: FontStyle.normal),
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
                                    'Переправы 1А',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perepravi1A >= 1) {
                                            setState(() {
                                              perepravi1A--;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      SizedBox(
                                          width: 10,
                                          child: Text(
                                            '$perepravi1A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perepravi1A <= 5) {
                                            setState(() {
                                              perepravi1A++;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
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
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      Container(
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
                                              fontStyle: FontStyle.normal),
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
                                    'Перевалы 1А',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perevali1A >= 1) {
                                            setState(() {
                                              perevali1A--;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      SizedBox(
                                          width: 10,
                                          child: Text(
                                            '$perevali1A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perevali1A <= 1) {
                                            setState(() {
                                              perevali1A++;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
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
                                    'Вершины Н/К',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (vershiniNK >= 1) {
                                            setState(() {
                                              vershiniNK--;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      Container(
                                          width: 10,
                                          child: Text(
                                            '$vershiniNK',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (vershiniNK <= 1) {
                                            setState(() {
                                              vershiniNK++;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
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
                                    'Гребни Н/К',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (grebniNK >= 1) {
                                            setState(() {
                                              grebniNK--;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      SizedBox(
                                          width: 10,
                                          child: Text(
                                            '$grebniNK',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (grebniNK <= 1) {
                                            setState(() {
                                              grebniNK++;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
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
                                    'Каньоны Н/К и 1А',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (canyoniNK1A >= 1) {
                                            setState(() {
                                              canyoniNK1A--;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                      SizedBox(
                                          width: 10,
                                          child: Text(
                                            '$canyoniNK1A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (canyoniNK1A <= 7) {
                                            setState(() {
                                              canyoniNK1A++;
                                            });
                                          }
                                        },
                                        style: obstaclesButtonStyle,
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Color(0xff006FFD),
                                              fontSize: 25,
                                              fontStyle: FontStyle.normal),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 135,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Blue.withOpacity(0.2),
                                    blurRadius: 7,
                                    // offset: Offset(5, 5)
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Водный участок',
                                  style: mainTextStyle,
                                ),
                                SwitcherButton(
                                  onChange: (value) {
                                    water = value;
                                  },
                                  onColor: Blue,
                                  offColor: BlueAccent,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    double localObstacles = perepraviNK * 0.5 +
                        perepravi1A +
                        perevaliNK * 2.0 +
                        perevali1A * 4.0 +
                        vershiniNK * 4.0 +
                        grebniNK * 4.0 +
                        canyoniNK1A * 1.0;
                    double extendedObstacles = Kt[regionIndex] *
                        PP_points[category] *
                        kilometersSlideValue /
                        Arr_L[category];
                    if (water == true) localObstacles += water_points[1];
                    if (localObstacles.toInt() > LP_points[category]) {
                      int localObstacles = LP_points[category];
                    }
                    final integralRating = geograficalIndicator[regionIndex] *
                        (1 + heightSlideValue / 12);
                    int categoryRating = localObstacles.toInt() +
                        extendedObstacles.toInt() +
                        integralRating.toInt();
                    Get.to(EndingScreen(categoryRating: categoryRating));
                  },
                  style: ElevatedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: const Color(0xff006FFD),
                      onPrimary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      minimumSize:
                          const Size(double.infinity, double.minPositive + 50),
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'Готово!',
                    style: buttonTextStyle,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
