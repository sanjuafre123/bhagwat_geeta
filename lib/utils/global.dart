import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modal/shloks_modal.dart';

List translate = [
  'अध्यायः',
  'अध्याय',
  'Chapter',
  'પ્રકરણ',
];

int selectedIndex = 0;
List<Verse> verses = [];
var repaintKey = GlobalKey();

List ChaptersImgList = [
  'assets/1.webp',
  'assets/2.jpeg',
  'assets/3.jpeg',
  'assets/4.jpg',
  'assets/5.jpeg',
  'assets/6.jpeg',
  'assets/7.jpeg',
  'assets/8.jpg',
  'assets/9.jpg',
  'assets/10.jpeg',
  'assets/11.jpg',
  'assets/12.jpg',
  'assets/13.jpg',
  'assets/1.webp',
  'assets/2.jpeg',
  'assets/3.jpeg',
  'assets/4.jpg',
  'assets/5.jpeg',
];
List imageList = [
  'assets/10.jpeg',
  'assets/7.jpeg',
];

List shlok = [
  'कुल श्लोक : 47',
  'कुल श्लोक : 72',
  'कुल श्लोक : 43',
  'कुल श्लोक : 42',
  'कुल श्लोक : 29',
  'कुल श्लोक : 47',
  'कुल श्लोक : 30',
  'कुल श्लोक : 28',
  'कुल श्लोक : 34',
  'कुल श्लोक : 42',
  'कुल श्लोक : 55',
  'कुल श्लोक : 20',
  'कुल श्लोक : 34',
  'कुल श्लोक : 27',
  'कुल श्लोक : 20',
  'कुल श्लोक : 24',
  'कुल श्लोक : 28',
  'कुल श्लोक : 78',
];

List chapter = [
  'अर्जुनविषादयोगः',
  'सांख्ययोगः',
  'कर्मयोगः',
  'ज्ञानकर्मसंन्यासयोगः',
  'कर्मसंन्यासयोगः',
  'ध्यानयोगः',
  'ज्ञानविज्ञानयोगः',
  'अक्षरब्रह्मयोगः',
  'राजविद्याराजगुह्ययोगः',
  'विभूतियोगः',
  'विश्वरूपदर्शनयोगः',
  'भक्तियोगः',
  'क्षेत्रक्षेत्रज्ञविभागयोगः',
  'गुणत्रयविभागयोगः',
  'पुरुषोत्तमयोगः',
  'दैवासुरसम्पद्विभागयोगः',
  'श्रद्धात्रयविभागयोगः',
  'मोक्षसंन्यासयोगः'
];

List<PopupMenuEntry> popUpMenuItems = [
  const PopupMenuItem(
    value: 0,
    child: Text(
      'Sanskrit',
    ),
  ),
  const PopupMenuItem(
    value: 1,
    child: Text(
      'Hindi',
    ),
  ),
  const PopupMenuItem(
    value: 2,
    child: Text(
      'English',
    ),
  ),
  const PopupMenuItem(
    value: 3,
    child: Text(
      'Gujarati',
    ),
  ),
];
