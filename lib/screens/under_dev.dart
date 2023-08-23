import 'package:flutter/material.dart';
import 'package:student_welfare_app/widgets/top.dart';

class UnderDev extends StatelessWidget {
  const UnderDev({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Top(
                title: "under Devolopment",
                desc:
                    "as a SINGLE person in didn't yet reach this part of devolopment, will be reaching soon")
          ],
        ),
      ),
    );
  }
}
