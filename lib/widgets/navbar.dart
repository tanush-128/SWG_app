import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_welfare_app/styles/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.pageindex,
    required this.pageChange,
  });
  final int pageindex;
  final Function(int index) pageChange;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  void onTap(int index) {
    setState(() {
      if (widget.pageindex != index) {
        widget.pageChange(index);
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.elliptical(MediaQuery.of(context).size.width, 20))),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                onTap(0);
              },
              child: Icon(
                Icons.home_filled,
                color: widget.pageindex == 0 ? Colors.white : Colors.white54,
                size: 30,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                onTap(1);
              },
              child: Icon(
                Icons.event,
                color: widget.pageindex == 1 ? Colors.white : Colors.white54,
                size: 25,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                onTap(2);
              },
              child: Icon(
                Icons.contacts,
                color: widget.pageindex == 2 ? Colors.white : Colors.white54,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
