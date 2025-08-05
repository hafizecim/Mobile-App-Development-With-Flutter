import 'package:flutter/material.dart';

class Lesson {
  final String title;
  final String subtitle;
  final String summary;
  final Widget lessonPage;
  //final String codeText;

  Lesson({
    required this.title,
    required this.subtitle,
    required this.summary,
    required this.lessonPage,
    //required this.codeText,
  });
}
