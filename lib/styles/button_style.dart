import 'package:flutter/material.dart';
import 'package:student_welfare_app/styles/colors.dart';

final ButtonStyle kButtonStyle = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(100),
    ),
  ),
  backgroundColor: kPrimaryColor,
);
