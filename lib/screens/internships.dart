import 'package:flutter/material.dart';
import 'package:student_welfare_app/widgets/infoTile.dart';
import 'package:student_welfare_app/models/info.dart';
import 'package:student_welfare_app/widgets/top.dart';

class Internships extends StatelessWidget {
  const Internships({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              const Top(
                  title: "cdc internships",
                  desc:
                      '"Mistakes are the best lessons,while Experience is the best teacher"'),
              for (int i = 0; i < placements.length; i++)
                InfoTile(info: placements[i]),
            ]),
          ),
        ),
      ),
    );
  }
}
