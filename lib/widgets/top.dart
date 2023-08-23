import 'package:flutter/material.dart';
import 'package:student_welfare_app/styles/colors.dart';

class Top extends StatelessWidget {
  const Top({
    super.key,
    required this.title,
    required this.desc,
  });

  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 200,
        // color: Colors.blue,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 80))),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 0, 10),
          child: Column(
            children: [
              Text(
                title.toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Center(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  const Hero(
                    tag: "logo",
                    child: Image(
                        image: AssetImage(
                          "assets/SWG.png",
                        ),
                        height: 75),
                  ),
                  const Text(
                    "Stuent Welfare Group",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Expanded(
                          child: Text(
                        desc,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16, color: Colors.black54),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
