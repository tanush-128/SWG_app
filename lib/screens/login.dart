import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_welfare_app/styles/button_style.dart';
import 'package:student_welfare_app/styles/colors.dart';
import 'package:student_welfare_app/styles/input_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  void login(BuildContext context) {
    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2 + 100,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 150))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 250, 25, 0),
              child: Card(
                child: Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Hero(
                        tag: "logo",
                        child: Image(
                          image: AssetImage("assets/SWG.png"),
                          height: 120,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "student welfare group".toUpperCase(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const kInput(
                        label: "Enter Institute Email-ID",
                        icon: Icons.email,
                      ),
                      const kInput(
                        label: "Enter OTP",
                        icon: Icons.password_sharp,
                      ),
                      ElevatedButton(
                          style: kButtonStyle,
                          onPressed: () {
                            login(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            child: Text("VERIFY"),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            const Image(
              image: AssetImage("assets/welfare.png"),
              // height: 400,
            )
          ],
        ),
      ),
    );
  }
}
