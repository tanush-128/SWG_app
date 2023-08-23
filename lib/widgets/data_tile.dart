import 'package:flutter/material.dart';
import 'package:student_welfare_app/models/data.dart';

class DataTile extends StatelessWidget {
  const DataTile({super.key, required this.data});
  final Data data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6 ),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(data.imgPath),
              height: 100,
            ),
            Flexible(
                child: Center(
              child: Text(
                data.title.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
