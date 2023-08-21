import 'package:flutter/material.dart';
import 'package:student_welfare_app/models/data.dart';
import 'package:student_welfare_app/widgets/data_tile.dart';
import 'package:student_welfare_app/widgets/top.dart';

class Departments extends StatelessWidget {
  const Departments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Top(
                title: "Know Your Department",
                desc:
                    "Dive in to know more about your department in the words of final year students."),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                DataTile(data: departments[0]),
                DataTile(data: departments[0])
              ],
            )
          ],
        ),
      ),
    );
  }
}
