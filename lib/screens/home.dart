import 'package:flutter/material.dart';
import 'package:student_welfare_app/models/info.dart';
import 'package:student_welfare_app/styles/colors.dart';
import 'package:student_welfare_app/widgets/carousel.dart';
import 'package:student_welfare_app/widgets/infoTile.dart';
import 'package:student_welfare_app/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:
      //     const Hero(tag: "navbar", child: CustomBottomNavigationBar()),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(children: [
              Container(
                height: 275,
                // color: Colors.blue,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 200))),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 0, 10),
                  child: SizedBox(
                    height: 50,
                    child: Column(
                      children: [
                        // ),
                        const Card(
                          child: Hero(
                            tag: "logo",
                            child: Image(
                                image: AssetImage(
                                  "assets/SWG.png",
                                ),
                                height: 85),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Text(
                            "Student Welfare Group".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 120, 0, 10),
                child: Carousel(),
              ),
            ]),
            ...infos.map((info) => InfoTile(info: info)).toList()
          ]),
        ),
      ),
    );
  }
}
