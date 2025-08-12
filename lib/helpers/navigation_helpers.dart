
import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    ),
  );
}

void navigateAndFinish(BuildContext context, Widget screen) =>
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return screen;
      }),
    );