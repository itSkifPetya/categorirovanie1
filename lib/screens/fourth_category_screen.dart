import 'dart:ui';
import 'package:get/get.dart';
import 'package:searchfield/searchfield.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'ending_screen.dart';
import 'package:switcher_button/switcher_button.dart';
// import 'package:keyboard_visibility/keyboard_visibility.dart';

class FourthCategory extends StatelessWidget {
  const FourthCategory({Key? key}) : super(key: key);

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
            body: Obstacles3ks()
      )),
    );
  }
}

class Obstacles3ks extends StatefulWidget {
  const Obstacles3ks({Key? key}) : super(key: key);

  @override
  State<Obstacles3ks> createState() => _Obstacles3ksState();
}

class _Obstacles3ksState extends State<Obstacles3ks> {
  double kilometersSlideValue = 170;
  double heightSlideValue = 5;
  int regionIndex = -1;
  int perepravi1A = 0;
  int perepravi1B = 0;
  int perepravi2A = 0;
  int perevali1A = 0;
  int perevali1B = 0;
  int perevali2A = 0;
  int vershiniNK = 0;
  int vershini1A = 0;
  int vershini1B = 0;
  int grebniNK = 0;
  int grebni1A = 0;
  int grebni1B = 0;
  int canyoniNK1A = 0;
  int canyoni1B = 0;
  int canyoni2A = 0;
  bool water = false;
  int category = 4 - 1;

  // void initState() {
  //   super.initState();
  //
  //   KeyboardVisibilityNotification().addNewListener(
  //     onChange: (bool isKeyboardVisible) {
  //       return isKeyboardVisible;
  //     },
  //   );
  // }

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
                // const SizedBox(
                //   height: 8,
                // ),
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
                            min: 170 * 0.75 - 5,
                            max: 190,
                            divisions: 135,
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                    'Переправы 1Б',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perepravi1B >= 1) {
                                            setState(() {
                                              perepravi1B--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                            '$perepravi1B',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perepravi1B <= 2) {
                                            setState(() {
                                              perepravi1B++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                      ), ///Переправы 1А и 1Б
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
                                    'Переправы 2А',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perepravi2A >= 1) {
                                            setState(() {
                                              perepravi2A--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                            '$perepravi2A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perepravi2A <= 2) {
                                            setState(() {
                                              perepravi2A++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                          if (perevali1A <= 2) {
                                            setState(() {
                                              perevali1A++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                      ), ///Переправы 2А и перевалы 1А
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
                                    'Перевалы 1Б',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perevali1B >= 1) {
                                            setState(() {
                                              perevali1B--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                            '$perevali1B',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perevali1B <= 1) {
                                            setState(() {
                                              perevali1B++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                    'Перевалы 2А',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perevali2A >= 1) {
                                            setState(() {
                                              perevali2A--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                            '$perevali2A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (perevali2A <= 1) {
                                            setState(() {
                                              perevali2A++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                      ), ///Перевалы 1Б и 2А
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                    'Вершины 1А',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (vershini1A >= 1) {
                                            setState(() {
                                              vershini1A--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                            '$vershini1A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (vershini1A <= 1) {
                                            setState(() {
                                              vershini1A++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                      ), ///Вершины Н/К и 1А
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
                                    'Вершины 1Б',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (grebni1B >= 1) {
                                            setState(() {
                                              grebni1B--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                            '$grebni1B',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (grebni1B <= 1) {
                                            setState(() {
                                              grebni1B++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                      ), ///Вершины 1Б и гребни Н/К
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
                                    'Гребни 1A',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (grebni1A >= 1) {
                                            setState(() {
                                              grebni1A--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                            '$grebni1A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (grebni1A <= 1) {
                                            setState(() {
                                              grebni1A++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                    'Гребни 1Б',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (vershini1B >= 1) {
                                            setState(() {
                                              vershini1B--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                            '$vershini1B',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (vershini1B <= 1) {
                                            setState(() {
                                              vershini1B++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                      ), ///Гребни 1А и 1Б
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                    'Каньоны 1Б',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (canyoni1B >= 1) {
                                            setState(() {
                                              canyoni1B--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                                            '$canyoni1B',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (canyoni1B <= 3) {
                                            setState(() {
                                              canyoni1B++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color(0xffeaf2ff)),
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
                      ), ///Каньоны Н/К и 1А и 1Б
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
                                    'Каньоны 2А',
                                    style: mainTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (canyoni2A >= 1) {
                                            setState(() {
                                              canyoni2A--;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                                            '$canyoni2A',
                                            style: sliderValueStyle,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (canyoni2A <= 3) {
                                            setState(() {
                                              canyoni2A++;
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                            const Color(0xffeaf2ff)),
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
                      ), ///Каньоны 2А и водный участок
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    int categoryRating = CategoryRating(
                        kilometersSlideValue,
                        heightSlideValue,
                        regionIndex,
                        perepravi2A,
                        perepravi1A,
                        perepravi1B,
                        perevali2A,
                        perevali1A,
                        perevali1B,
                        vershiniNK,
                        vershini1A,
                        vershini1B,
                        grebniNK,
                        grebni1A,
                        grebni1B,
                        canyoniNK1A,
                        canyoni1B,
                        canyoni2A,
                        water,
                        category);
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

int CategoryRating(
    double kilometersSlideValue,
    double heightSlideValue,
    int regionIndex,
    int perepravi2A,
    int perepravi1A,
    int perepravi1B,
    int perevali2A,
    int perevali1A,
    int perevali1B,
    int vershiniNK,
    int vershini1A,
    int vershini1B,
    int grebniNK,
    int grebni1A,
    int grebni1B,
    int canyoniNK1A,
    int canyoni1B,
    int canyoni2A,
    bool water,
    int category) {
  double localObstacles = perepravi2A * 7.0 +
      perepravi1A + perepravi1B * 4.0 +
      perevali2A * 8.0 +
      perevali1A * 4.0 + perevali1B * 6.0 +
      vershiniNK * 4.0 + vershini1A * 5.0 + vershini1B * 7.0 +
      grebniNK * 4.0 + grebni1A * 5.0 + grebni1B * 7.0 +
      canyoniNK1A * 1.0 + canyoni1B * 3.0 + canyoni2A * 5.0;
  double extendedObstacles = Kt[regionIndex] *
      PP_points[category] *
      kilometersSlideValue /
      Arr_L[category];
  if (water == true) localObstacles += water_points[category];
  if (localObstacles.toInt() > LP_points[category]) {
    int localObstacles = LP_points[category];
  }
  final integralRating =
      geograficalIndicator[regionIndex] * (1 + heightSlideValue / 12);
  int categoryRating = localObstacles.toInt() +
      extendedObstacles.toInt() +
      integralRating.toInt();
  print("Локальные препятствия: $localObstacles");
  print("Протяжённые препятствия: $extendedObstacles");
  print("Интегральная оценка: $integralRating");
  print("Набранные баллы: $categoryRating");
  return categoryRating;
}