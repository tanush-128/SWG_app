import 'package:flutter/material.dart';
import 'package:student_welfare_app/styles/button_style.dart';
import 'package:student_welfare_app/styles/input_style.dart';
import 'package:student_welfare_app/widgets/top.dart';

class MentorMentee extends StatelessWidget {
  const MentorMentee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
        child: Container(
          // decoration: kBoxDecoration,
          child: Column(
            children: [
              const Top(
                  title: "mentor-mentee",
                  desc:
                      '"If you cannot see where you are going, ask someone who has been"'),
              Row(
                children: [
                  const Expanded(
                      child: kInput(
                          label: "Enter your Roll NO", icon: Icons.search)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: kButtonStyle,
                      onPressed: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 14),
                        child: Text("SEARCH"),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
