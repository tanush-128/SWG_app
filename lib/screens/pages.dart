// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_welfare_app/screens/contact_us.dart';
import 'package:student_welfare_app/screens/events.dart';
import 'package:student_welfare_app/screens/home.dart';
import 'package:student_welfare_app/screens/login.dart';
import 'package:student_welfare_app/widgets/navbar.dart';
// import 'package:page_transition/page_transition.dart';

// class Splash extends StatelessWidget {
//   const Splash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       duration: 3000,
//       // animationDuration: Duration(milliseconds: 800),
//       splash: Image.asset("assets/SWG.png"),
//       nextScreen: LoginPage(),
//       splashTransition: SplashTransition.scaleTransition,
//       pageTransitionType: PageTransitionType.scale,
//     );
//   }
// }

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int _currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  void changePage(int index) {
    setState(() {
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 10), curve: Curves.ease);
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          changePage(value);
        },
        children: [
          const Home(),
          const Events(),
          ContactUs(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        pageindex: _currentIndex,
        pageChange: changePage,
      ),
    );
  }
}
