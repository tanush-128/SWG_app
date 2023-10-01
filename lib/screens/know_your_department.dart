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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Top(
                  title: "Know Your Department",
                  desc:
                      "Dive in to know more about your department in the words of final year students."),
              GridView.count(
                childAspectRatio: 9 / 10,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  for (int i = 0; i < departments.length; i++)
                    DataTile(data: departments[i])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
