// lib/models/bolum_model.dart

import 'lesson_model.dart';

class Bolum {
  final String bolumAdi;
  final List<Lesson> dersler;

  Bolum({required this.bolumAdi, required this.dersler});
}
