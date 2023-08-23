import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:student_welfare_app/models/event.dart';
import 'package:student_welfare_app/styles/button_style.dart';
import 'package:student_welfare_app/styles/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class EventPost extends StatefulWidget {
  const EventPost({
    super.key,
    required this.event,
  });
  final Event event;

  @override
  State<EventPost> createState() => _EventPostState();
}

class _EventPostState extends State<EventPost>
    with SingleTickerProviderStateMixin {
  late TransformationController controller;
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TransformationController();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() {
        controller.value = animation!.value;
      });
  }

  void dispose() {
    controller.dispose();
    animationController.dispose();
    super.dispose();
  }

  void resetAnimation() {
    animation = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity(),
    ).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    animationController.forward(from: 0);
  }

  void details() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      context: context,
      builder: (context) {
        return Container(
          // height: MediaQuery.of(context).size.height / 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    widget.event.association_name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.event.event_name,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Text("17th August")
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    children: [
                      Linkify(
                        onOpen: (link) async {
                          if (!await launchUrl(Uri.parse(link.url))) {
                            throw Exception('Could not launch ${link.url}');
                          }
                        },
                        text: widget.event.event_desc,
                        style: const TextStyle(fontSize: 16),
                        linkStyle: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.event),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.event.association_name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          InteractiveViewer(
            transformationController: controller,
            onInteractionEnd: (details) {
              resetAnimation();
            },
            panEnabled: false,
            clipBehavior: Clip.none,
            minScale: 1,
            maxScale: 1.5,
         
            child: Image(
              image: AssetImage(widget.event.image_url),
              // image: FileImage(File(widget.event.image_url)),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      details();
                    },
                    child: Text(
                      "Details",
                      style: TextStyle(fontSize: 16, color: kPrimaryColor),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("JOIN"),
                  style: kButtonStyle,
                ),
              ),
            ],
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
