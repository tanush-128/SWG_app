import 'package:flutter/material.dart';

final InputDecoration kInputDecoration = InputDecoration(
  filled: true,
  // icon: Icon(Icons.search),
  prefixIcon: const Icon(Icons.search),
  prefixIconColor: Colors.black,
  // label: Icon(Icons.search),

  // helperText: "Enter your Roll NO",
  fillColor: Colors.black12,
  isCollapsed: false,
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
);
