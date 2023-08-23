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
  Data(
      title: "Agricultue and Food Engineering",
      imgPath: "assets/department/agriculture.png",
      onClickOpenUrl: ''),
  Data(
      title: "Bio Technology",
      imgPath: "assets/department/biotechnology.png",
      onClickOpenUrl: ''),
  Data(
      title: "Chemistry",
      imgPath: "assets/department/chemistry.png",
      onClickOpenUrl: ''),
  Data(
      title: "Chemical Engineering",
      imgPath: "assets/department/scientific.png",
      onClickOpenUrl: ''),
  Data(
      title: "Civil Engineering",
      imgPath: "assets/department/civil-engineering.png",
      onClickOpenUrl: ''),
  Data(
      title: "Computer Science and Engineering",
      imgPath: "assets/department/computer-science.png",
      onClickOpenUrl: ''),
  Data(
      title: "Electronics and Electronics Communication",
      imgPath: "assets/department/electronics.png",
      onClickOpenUrl: ''),
  Data(
      title: "Elctrical Engineering",
      imgPath: "assets/department/electrical.png",
      onClickOpenUrl: ""),
  Data(
      title: "Geology and Geophysics",
      imgPath: "assets/department/geology.png",
      onClickOpenUrl: ""),
  Data(
      title: "Humanities and Social Sciences",
      imgPath: "assets/department/humanities.png",
      onClickOpenUrl: ""),
  Data(
      title: "Industrial and Systems Engineering",
      imgPath: "assets/department/manufacturing.png",
      onClickOpenUrl: ""),
  Data(
      title: "Instrumentation Engineering",
      imgPath: "assets/department/medical-laboratory.png",
      onClickOpenUrl: ""),
  // Data(title: "Exploration Geophysics,", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Mechanical Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Manufacturuing Science and Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Mining Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Mathematics", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Metallurgy and Materials Engineering", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Ocean and Naval Architechture", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Physics", imgPath: imgPath, onClickOpenUrl: ""),
  // Data(title: "Quality Engineering Design and Manufacturing", imgPath: imgPath, onClickOpenUrl: "")
];
