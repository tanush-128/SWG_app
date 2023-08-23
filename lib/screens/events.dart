import 'package:flutter/material.dart';
import 'package:student_welfare_app/models/event.dart';
import 'package:student_welfare_app/styles/button_style.dart';
import 'package:student_welfare_app/styles/input_style.dart';
import 'package:student_welfare_app/widgets/event_post.dart';
import 'package:student_welfare_app/widgets/navbar.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:
      //     const Hero(tag: "navbar", child: CustomBottomNavigationBar()),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: kInput(
                          label: "Search a Event or Club", icon: Icons.search)),
                  // Expanded(
                  //     child: Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: TextField(
                  //       decoration: kInputDecoration.copyWith(
                  //           hintText: "Search a Event or Club")),
                  // )),
                  // SizedBox(
                  //   width: 10,
                  // ),
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
              EventPost(
                event: dummyEvents[0],
              ),
              EventPost(
                event: dummyEvents[1],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
