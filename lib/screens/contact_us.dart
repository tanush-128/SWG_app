import 'package:flutter/material.dart';
import 'package:student_welfare_app/models/info.dart';
import 'package:student_welfare_app/styles/colors.dart';
import 'package:student_welfare_app/widgets/infoTile.dart';
import 'package:student_welfare_app/widgets/top.dart';

class ContactUs extends StatelessWidget {
  ContactUs({super.key});
  final List<Info> events = [
    const Info(
        id: "e1",
        title: "Student Mentorship Program",
        description: "",
        imageUrl: "assets/icons/teacher.png",
        path: "/"),
    const Info(
        id: "e2",
        title: "PDS Doubts Sessions",
        description: "",
        imageUrl: "assets/icons/question.png",
        path: "/"),
    const Info(
        id: "e3",
        title: "Foresight Posts",
        description: "",
        imageUrl: "assets/icons/professionals.png",
        path: "/"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Top(
                title: "our events",
                desc:
                    "feel free to reach us in case of any doubt, help or advice!"),
            InfoTile(info: events[0]),
            InfoTile(info: events[1]),
            InfoTile(info: events[2]),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Reach Us At".toUpperCase(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    splashColor: kPrimaryColor,
                    child: const Image(
                        height: 50,
                        image: AssetImage("assets/icons/instagram.png")),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: kPrimaryColor,
                    child: const Image(
                        height: 50,
                        image: AssetImage("assets/icons/facebook.png")),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: kPrimaryColor,
                    child: const Image(
                        height: 50,
                        image: AssetImage("assets/icons/gmail.png")),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
