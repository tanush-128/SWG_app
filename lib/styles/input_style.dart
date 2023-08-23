import 'package:flutter/material.dart';

// final InputDecoration kInputDecoration = InputDecoration(
//     filled: true,
//     // icon: Icon(Icons.search),
//     prefixIcon: const Icon(Icons.search),
//     prefixIconColor: Colors.black,
//     // label: Icon(Icons.search),
//     // hintStyle: TextStyle(),
//     // helperText: "Enter your Roll NO",
//     fillColor: Colors.black12,
//     isCollapsed: false,
//     border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
//     constraints: const BoxConstraints(maxHeight: 45));

class kInput extends StatelessWidget {
  const kInput({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black12,
        ),
        height: 45,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: label),
              ),
            )
          ],
        ),
      ),
    );
  }
}
