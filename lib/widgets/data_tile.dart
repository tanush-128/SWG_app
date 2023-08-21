import 'package:flutter/material.dart';
import 'package:student_welfare_app/models/data.dart';

class DataTile extends StatelessWidget {
  const DataTile({super.key, required this.data});
  final Data data;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(data.imgPath),
          ),
          Wrap(
            children: [
              Text(data.title),
            ],
          )
        ],
      ),
    );
  }
}
