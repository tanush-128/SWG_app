import 'package:flutter/material.dart';

class Data {
  Data(
      {required this.title,
      required this.imgPath,
      required this.onClickOpenUrl});
  final String title;
  final String imgPath;
  final String onClickOpenUrl;
}

final List<Data> departments = [
  Data(
      title: "Aerospace Engineering",
      imgPath: "assets/department/aerospace.png",
      onClickOpenUrl: ''),
  // Data(title: "Agricultue and Food Engineering", imgPath: imgPath, onClickOpenUrl: ''),
  // Data(title: "Bio Technology", imgPath: ,onClickOpenUrl: '' ),
  // Data(title: "Chemistry", imgPath: imgPath, onClickOpenUrl: ''),
  // Data(title: "Chemical Engineering", imgPath: imgPath, onClickOpenUrl: ''),
  // Data(title: "Civil Engineering", imgPath: imgPath, onClickOpenUrl: ''),
  // Data(title: "Computer Science and Engineering", imgPath: imgPath, onClickOpenUrl: ''),
  // Data(title: "Electronics and Electronics Communication", imgPath: imgPath, onClickOpenUrl:''),
  // Data(title: "Elctrical Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Geology and Geophysics", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Exploration Geophysics,", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Humanities and Social Sciences", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Industrial and Systems Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Instrumentation Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Mechanical Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Manufacturuing Science and Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Mining Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Mathematics", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Metallurgy and Materials Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Ocean and Naval Architechture", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Physics", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Quality Engineering Design and Manufacturing", imgPath: imgPath, onClickOpenUrl: "")
];
