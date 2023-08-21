import 'package:flutter/material.dart';
import 'package:student_welfare_app/screens/contact_us.dart';
import 'package:student_welfare_app/screens/events.dart';
import 'package:student_welfare_app/screens/home.dart';
import 'package:student_welfare_app/widgets/navbar.dart';

class Pages extends StatefulWidget {
  Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int _currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  void changePage(int index) {
    setState(() {
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
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
