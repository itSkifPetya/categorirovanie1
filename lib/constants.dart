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

List<DropdownMenuItem<dynamic>> autonomities = [
  DropdownMenuItem(
    value: 'full',
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Icon(
            Icons.route,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          width: 11,
        ),
        const Text(
          'Полная автономия',
          maxLines: 3,
        ),
      ],
    ),
  ),
  DropdownMenuItem(
    value: 'partly',
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Icon(
            Icons.route,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          width: 11,
        ),
        const Text(
          'Заброски или промежуточные базы',
          maxLines: 3,
        ),
      ],
    ),
  ),
  DropdownMenuItem(
    value: 'one locality',
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Icon(
            Icons.route,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          width: 11,
        ),
        const Text(
          'Один населённый пункт',
          maxLines: 3,
        ),
      ],
    ),
  ),
  DropdownMenuItem(
    value: 'more locality',
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Icon(
            Icons.route,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          width: 11,
        ),
        const Text(
          'Несколько населённых пунктов',
          maxLines: 3,
        ),
      ],
    ),
  )
];

List<String> autonomityValues = [
  'full',
  'partly',
  'one locality',
  'more locality'
];

List<double> autonomyOpacity = [1, 0.7, 0.5, 0.2];

List<SearchFieldListItem<dynamic>> SearchFieldSuggestions = [
  SearchFieldListItem('Алданское нагорье ',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Алданское нагорье ', style: searchTextStyle))),
  SearchFieldListItem('Алтай',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Алтай', style: searchTextStyle))),
  SearchFieldListItem('Архангельская область',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Архангельская область', style: searchTextStyle))),
  SearchFieldListItem('Байкальский хребет',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Байкальский хребет', style: searchTextStyle))),
  SearchFieldListItem('Баргузинский хребет',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Баргузинский хребет', style: searchTextStyle))),
  SearchFieldListItem('Белоруссия',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Белоруссия', style: searchTextStyle))),
  SearchFieldListItem('Верхнеангарский хребет',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Верхнеангарский хребет', style: searchTextStyle))),
  SearchFieldListItem('Верхоянский хребет',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Верхоянский хребет', style: searchTextStyle))),
  SearchFieldListItem('Вологодская область',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Вологодская область', style: searchTextStyle))),
  SearchFieldListItem('Восточный Кавказ',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Восточный Кавказ', style: searchTextStyle))),
  SearchFieldListItem('Восточный Саян',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Восточный Саян', style: searchTextStyle))),
  SearchFieldListItem('Горная Шория',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Горная Шория', style: searchTextStyle))),
  SearchFieldListItem('Джунгарский Алатау',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Джунгарский Алатау', style: searchTextStyle))),
  SearchFieldListItem('Европейская часть России ',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Европейская часть России ', style: searchTextStyle))),
  SearchFieldListItem('Закавказье',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Закавказье', style: searchTextStyle))),
  SearchFieldListItem('Западная Сибирь',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Западная Сибирь', style: searchTextStyle))),
  SearchFieldListItem('Западная Тыва',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Западная Тыва', style: searchTextStyle))),
  SearchFieldListItem('Западный Кавказ',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Западный Кавказ', style: searchTextStyle))),
  SearchFieldListItem('Западный Саян',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Западный Саян', style: searchTextStyle))),
  SearchFieldListItem('Западный Тянь-Шань',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Западный Тянь-Шань', style: searchTextStyle))),
  SearchFieldListItem('Земля Франца-Иосифа',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Земля Франца-Иосифа', style: searchTextStyle))),
  SearchFieldListItem('Икатский хребет',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Икатский хребет', style: searchTextStyle))),
  SearchFieldListItem('Казахстан',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Казахстан', style: searchTextStyle))),
  SearchFieldListItem('Камчатка (северная группа вулканов)',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Камчатка (северная группа вулканов)',
              style: searchTextStyle))),
  SearchFieldListItem('Камчатка (Срединный и Восточный хребты)',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Камчатка (Срединный и Восточный хребты)',
              style: searchTextStyle))),
  SearchFieldListItem('Камчатка (южная часть)',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Камчатка (южная часть)', style: searchTextStyle))),
  SearchFieldListItem('Карелия',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Карелия', style: searchTextStyle))),
  SearchFieldListItem('Карпаты',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Карпаты', style: searchTextStyle))),
  SearchFieldListItem('Кольский полуостров',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Кольский полуостров', style: searchTextStyle))),
  SearchFieldListItem('Корякское нагорье ',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Корякское нагорье ', style: searchTextStyle))),
  SearchFieldListItem('Крым',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Крым', style: searchTextStyle))),
  SearchFieldListItem('Кузнецкий Алатау',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Кузнецкий Алатау', style: searchTextStyle))),
  SearchFieldListItem('Курильские острова (сев.)',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Курильские острова (сев.)', style: searchTextStyle))),
  SearchFieldListItem('Курильские острова (южн.)',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Курильские острова (южн.)', style: searchTextStyle))),
  SearchFieldListItem('Ленинградская область',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Ленинградская область', style: searchTextStyle))),
  SearchFieldListItem('Магаданская область',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Магаданская область', style: searchTextStyle))),
  SearchFieldListItem('Монгольский Алтай ',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Монгольский Алтай ', style: searchTextStyle))),
  SearchFieldListItem('Муйский хребет',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Муйский хребет', style: searchTextStyle))),
  SearchFieldListItem('Новая Земля',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Новая Земля', style: searchTextStyle))),
  SearchFieldListItem('Памир',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Памир', style: searchTextStyle))),
  SearchFieldListItem('Памиро-Алай',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Памиро-Алай', style: searchTextStyle))),
  SearchFieldListItem('Плато Путорана',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Плато Путорана', style: searchTextStyle))),
  SearchFieldListItem('Полярный Урал',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Полярный Урал', style: searchTextStyle))),
  SearchFieldListItem('Приморье',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Приморье', style: searchTextStyle))),
  SearchFieldListItem('Приполярный Урал',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Приполярный Урал', style: searchTextStyle))),
  SearchFieldListItem('Республика Коми',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Республика Коми', style: searchTextStyle))),
  SearchFieldListItem('Салаирский кряж',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Салаирский кряж', style: searchTextStyle))),
  SearchFieldListItem('Сахалин',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Сахалин', style: searchTextStyle))),
  SearchFieldListItem('Северная Земля',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Северная Земля', style: searchTextStyle))),
  SearchFieldListItem('Северные тундровые районы',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Северные тундровые районы', style: searchTextStyle))),
  SearchFieldListItem('Северный Тянь-Шань',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Северный Тянь-Шань', style: searchTextStyle))),
  SearchFieldListItem('Северный Урал',
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Северный Урал', style: searchTextStyle))),
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
