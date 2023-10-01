import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_welfare_app/image_helper.dart';
import 'package:student_welfare_app/styles/button_style.dart';
import 'package:student_welfare_app/styles/colors.dart';

final imageHelper =
    ImageHelper(imageCropper: ImageCropper(), imagePicker: ImagePicker());

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        actions: [],
        title: const Text("Add an Event"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.event),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Student Welfare Group",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onDoubleTap: () async {
                final file = await imageHelper.pickImage();
                if (file != null) {
                  final croppedFile = await imageHelper.crop(
                      file: file, cropStyle: CropStyle.rectangle);
                  if (croppedFile != null) {
                    setState(() {
                      _image = File(croppedFile.path);
                    });
                  }
                }
              },
              child: _image == null
                  ? Container(
                      height: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image,
                            size: 50,
                          ),
                          Text(
                            "DoubleClick to Select Image",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                    )
                  : Image(
                      image: FileImage(_image!),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: 12,
                      minLines: 1,
                      decoration: InputDecoration(
                          hintText: "Enter Description",
                          helperText:
                              "Clickable links can be added in the desc"),
                    ),
                  )),
            ),
            ElevatedButton(
              onPressed: () {},
              style: kButtonStyle,
              child: const Text("Add Event"),
            )
          ],
        ),
      )),
    );
  }
}
