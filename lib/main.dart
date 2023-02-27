/// Мобильное приложение Категория сложности
/// Разработано учеником Академии Цифровых Технологий Санкт-Петербурга, а также ГБОУ Лицея №64
/// Иконка приложения: Изображение от storyset на Freepik
/// https://ru.freepik.com/free-vector/climbing-concept-illustration_13317058.htm#query=%D0%B0%D0%BB%D1%8C%D0%BF%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%8B&position=4&from_view=search&track=robertav1
/// Фоновая картинка приложения: Изображение от storyset на Freepik
/// https://ru.freepik.com/free-vector/flat-adventure-background-with-mountains_16534142.htm#query=climbing&position=5&from_view=search&track=robertav1

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/main_screen.dart';
import 'screens/diff_choose_screen.dart';
import 'screens/first_category_screen.dart';
import 'screens/second_category_screen.dart';
import 'screens/third_category_screen.dart';
import 'screens/fourth_category_screen.dart';
import 'screens/fifth_category_screen.dart';
import 'screens/sixth_category_screen.dart';
import 'screens/ending_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DiffChooseScreen(),
      getPages: [
        GetPage(name: '/', page: () => const MainScreen()),
        GetPage(name: '/choose', page: () => const DiffChooseScreen()),
        GetPage(name: '/choose/1category', page: () => const FirstCategory()),
        GetPage(name: '/choose/2category', page: () => const SecondCategory()),
        GetPage(name: '/choose/3category', page: () => const ThirdCategory()),
        GetPage(name: '/choose/4category', page: () => const FourthCategory()),
        GetPage(name: '/choose/5category', page: () => const FifthCategory()),
        GetPage(name: '/choose/6category', page: () => const SixthCategory())
      ],
    );
  }
}

