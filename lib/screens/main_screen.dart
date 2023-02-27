import 'package:flutter/material.dart';
import 'diff_choose_screen.dart';
import '../constants.dart';
import 'dart:ui';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  final themeColor = Colors.white;
  final containerBorderRadius = const BorderRadius.all(Radius.circular(20));

  @override
  Widget build(BuildContext context) {
    final queryHeight = MediaQuery
        .of(context)
        .size
        .height;
    final queryWidth = MediaQuery
        .of(context)
        .size
        .width;
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
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Center(
              child: IntrinsicHeight(
                child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: containerBorderRadius, color: themeColor),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Text(
                            'Добро пожаловать!',
                            style: mainHeaderStyle,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              Get.toNamed('/choose');
                            },
                            style: ElevatedButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                backgroundColor: const Color(0xff006FFD),
                                onPrimary: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                                minimumSize:
                                const Size(double.infinity, double.minPositive + 50),
                                shadowColor: Colors.transparent
                            ),
                            child: const Text(
                              'Категорировать маршрут',
                              style: buttonTextStyle,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                foregroundColor: const Color(0xff006FFD),
                                backgroundColor: Colors.white,
                                onPrimary: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                                minimumSize:
                                const Size(double.infinity, double.minPositive + 50),
                                shadowColor: Colors.transparent,
                                side: const BorderSide(
                                    color: Color(0xff97979B), width: 1)),
                            child: const Text(
                              'Войти в сеть',
                              style: buttonTextStyle,
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



