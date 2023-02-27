import 'dart:ui';
import '../constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiffChooseScreen extends StatelessWidget {
  const DiffChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: IntrinsicHeight(
            child: Container(
                width: 300,
                decoration: const BoxDecoration(
                    borderRadius: containerBorderRadius, color: themeColor),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Добро пожаловать!',
                        style: mainHeaderStyle,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Center(
                          child: Text(
                        'Для начала выберите ориентировочную категорию сложности',
                        style: mainTextStyle,
                        textAlign: TextAlign.center,
                      )),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 1; i < 4; i++)
                              ElevatedButton(
                                onPressed: () {
                                  Get.toNamed("/choose/${i}category");
                                },
                                style: ElevatedButton.styleFrom(
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    minimumSize: const Size(categoryButtonWidth,
                                        categoryButtonHeight),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    backgroundColor: const Color(0xffeaf2ff),
                                    onPrimary: const Color(0xff006FFD),
                                    shadowColor: Colors.transparent),
                                child: Text('$i'),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 4; i < 7; i++)
                              ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed("/choose/${i}category");
                                  },
                                  style: ElevatedButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      minimumSize: const Size(
                                          categoryButtonWidth,
                                          categoryButtonHeight),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      backgroundColor: const Color(0xffeaf2ff),
                                      onPrimary: const Color(0xff006FFD),
                                      shadowColor: Colors.transparent),
                                  child: Text('$i'))
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
