import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:student_welfare_app/screens/add_event.dart';
import 'package:student_welfare_app/screens/contact_us.dart';
import 'package:student_welfare_app/screens/events.dart';
import 'package:student_welfare_app/screens/home.dart';
import 'package:student_welfare_app/screens/internships.dart';
import 'package:student_welfare_app/screens/know_your_department.dart';
import 'package:student_welfare_app/screens/login.dart';
import 'package:student_welfare_app/screens/mentor_mentee.dart';
import 'package:student_welfare_app/screens/pages.dart';
import 'package:student_welfare_app/screens/study_Material.dart';
import 'package:student_welfare_app/screens/under_dev.dart';

final bool isLoggedIn = false;

GoRouter router = GoRouter(
    // redirect: (context, state) {
    //   if (isLoggedIn) {
    //     return '/';
    //   } else {
    //     return '/login';
    //   }
    // },
    // initialLocation: '/login',
    initialLocation: '/add_event',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage(child: Pages()),
        // pageBuilder: (context, state) => const MaterialPage(child: Splash()),
      ),
      GoRoute(
          path: '/study_material',
          pageBuilder: (context, state) =>
              const MaterialPage(child: StudyMaterial())),
      GoRoute(
          path: '/mentor_mentee',
          pageBuilder: (context, state) =>
              const MaterialPage(child: MentorMentee())),
      GoRoute(
          path: '/internships',
          pageBuilder: (context, state) =>
              const MaterialPage(child: Internships())),
      GoRoute(
          path: '/placements',
          pageBuilder: (context, state) =>
              const MaterialPage(child: Internships())),
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) => const MaterialPage(child: LoginPage()),
      ),
      GoRoute(
        path: '/dev',
        pageBuilder: (context, state) => const MaterialPage(child: UnderDev()),
      ),
      GoRoute(
        path: '/know_your_department',
        pageBuilder: (context, state) =>
            const MaterialPage(child: Departments()),
      ),
      GoRoute(
        path: '/add_event',
        pageBuilder: (context, state) => const MaterialPage(child: AddEvent()),
      ),
    ]);
