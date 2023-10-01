import 'package:flutter/material.dart';
import 'package:student_welfare_app/widgets/list_element.dart';
import 'package:student_welfare_app/widgets/top.dart';

class StudyMaterial extends StatelessWidget {
  const StudyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Top(
                title: "Study material for freshers :",
                desc:
                    '"All the material you need a night before exams compliled at on place"',
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 7,
                  ),
                  const ListElement("Study Material"),
                  const ListElement("Previous Year Papers"),
                  const ListElement("NPTEL channel"),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
