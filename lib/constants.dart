import 'dart:core';

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

const mainHeaderStyle =
    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w900, fontSize: 20);
const buttonTextStyle =
    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 12);
const mainTextStyle =
    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 12.5);
final searchTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Grey);
final sliderValueStyle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Grey);
final obstaclesButtonStyle = ElevatedButton.styleFrom(
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shape: const CircleBorder(),
    backgroundColor: const Color(0xffeaf2ff));

const themeColor = Colors.white;
const containerBorderRadius = BorderRadius.all(Radius.circular(20));

Color Blue = const Color(0xff006FFD);
Color BlueAccent = const Color(0xffEAF2FF);
Color Grey = const Color(0xff494A50);

const categoryButtonWidth = 70.0;
const categoryButtonHeight = 30.0;

List<double> PP_points = [12, 24, 50, 70, 100, 140];
List<int> LP_points = [10, 20, 40, 60, 80, 110];
List<int> Arr_L = [100, 120, 140, 170, 210, 250];
List<int> Arr_T = [6, 8, 10, 13, 16, 20];
List<int> max_points1 = [4, 10, 22, 32, 50, 73];
List<int> max_points2 = [4, 12, 24, 40, 64, 84];
List<int> max_points3 = [0, 8, 18, 32, 47, 67];
List<int> max_points4 = [0, 8, 18, 32, 46, 67];
List<int> max_points5 = [4, 8, 20, 40, 56, 72];
List<int> water_points = [0, 8, 20, 40, 56, 56];

List<SearchFieldListItem<dynamic>> SearchFieldSuggestions = [
  SearchFieldListItem("   Алтай"),
  SearchFieldListItem("   Архангельская область"),
  SearchFieldListItem("   Байкальский хребет"),
  SearchFieldListItem("   Баргузинский хребет"),
  SearchFieldListItem("   Белоруссия"),
  SearchFieldListItem("   Верхнеангарский хребет"),
  SearchFieldListItem("   Верхоянский хребет"),
  SearchFieldListItem("   Вологодская область"),
  SearchFieldListItem("   Восточный Кавказ"),
  SearchFieldListItem("   Восточный Саян"),
  SearchFieldListItem("   Горная Шория"),
  SearchFieldListItem("   Джунгарский Алатау"),
  SearchFieldListItem("   Европейская часть России"),
  SearchFieldListItem("   Закавказье"),
  SearchFieldListItem("   Западная Сибирь"),
  SearchFieldListItem("   Западная Тыва"),
  SearchFieldListItem("   Западный Кавказ"),
  SearchFieldListItem("   Западный Саян"),
  SearchFieldListItem("   Западный Тянь-Шань"),
  SearchFieldListItem("   Земля Франца-Иосифа"),
  SearchFieldListItem("   Икатский и Муйские хребты"),
  SearchFieldListItem("   Камчатка (северная группа вулканов)"),
  SearchFieldListItem("   Камчатка (Срединный и Восточный хребты)"),
  SearchFieldListItem("   Камчатка (южная часть)"),
  SearchFieldListItem("   Карелия"),
  SearchFieldListItem("   Карпаты"),
  SearchFieldListItem("   Кольский полуостров"),
  SearchFieldListItem("   Корякское нагорье"),
  SearchFieldListItem("   Крым"),
  SearchFieldListItem("   Кузнецкий Алатау"),
  SearchFieldListItem("   Курильские острова (сев.)"),
  SearchFieldListItem("   Курильские острова (южн.)"),
  SearchFieldListItem("   Ленинградская область"),
  SearchFieldListItem("   Магаданская область"),
  SearchFieldListItem("   Монгольский Алтай"),
  SearchFieldListItem("   Новая Земля"),
  SearchFieldListItem("   Памир"),
  SearchFieldListItem("   Памиро-Алай"),
  SearchFieldListItem("   Плато Путорана"),
  SearchFieldListItem("   Полярный Урал"),
  SearchFieldListItem("   Приморье"),
  SearchFieldListItem("   Приполярный Урал"),
  SearchFieldListItem("   Республика Коми"),
  SearchFieldListItem("   Салаирский кряж"),
  SearchFieldListItem("   Сахалин"),
  SearchFieldListItem("   Северная Земля"),
  SearchFieldListItem("   Северные тундровые районы"),
  SearchFieldListItem("   Северный Тянь-Шань"),
  SearchFieldListItem("   Северный Урал"),
  SearchFieldListItem("   Средний Урал"),
  SearchFieldListItem("   Средняя Азия и Казахстан (пуст.)"),
  SearchFieldListItem("   Становой хребет и Алданское нагорье"),
  SearchFieldListItem("   Украина"),
  SearchFieldListItem("   Хабаровский край"),
  SearchFieldListItem("   Хамар-Дабан"),
];
List<double> Kt = [
  0.6,
  0.3,
  0.65,
  0.75,
  0.28,
  0.85,
  0.83,
  0.28,
  0.4,
  0.7,
  0.5,
  0.53,
  0.28,
  0.33,
  0.42,
  0.55,
  0.35,
  0.65,
  0.5,
  0.9,
  1.0,
  0.65,
  0.88,
  0.63,
  0.3,
  0.3,
  0.4,
  0.75,
  0.3,
  0.55,
  0.8,
  0.95,
  0.28,
  0.75,
  0.55,
  0.9,
  0.7,
  0.63,
  0.65,
  0.5,
  0.83,
  0.63,
  0.3,
  0.38,
  0.75,
  0.9,
  0.55,
  0.53,
  0.5,
  0.35,
  0.4,
  0.9,
  0.28,
  0.83,
  0.6,
  0.85,
  0.9,
  1.0,
  0.42,
  0.7,
  0.55,
  0.75,
  0.55,
  0.38
];
List<int> geograficalIndicator = [
  8,
  8,
  10,
  10,
  1,
  12,
  18,
  4,
  5,
  9,
  6,
  8,
  1,
  4,
  8,
  8,
  4,
  7,
  8,
  30,
  12,
  13,
  13,
  13,
  6,
  2,
  9,
  19,
  2,
  6,
  10,
  10,
  4,
  18,
  8,
  30,
  9,
  8,
  15,
  9,
  9,
  10,
  8,
  6,
  7,
  30,
  16,
  8,
  7,
  6,
  10,
  14,
  1,
  12,
  7,
  18,
  18,
  13,
  5,
  9,
  8,
  18,
  8,
  6
];
