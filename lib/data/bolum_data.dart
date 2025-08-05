// lib/data/bolum_data.dart

import '../models/bolum_model.dart';
import '../models/lesson_model.dart';

import '../dersler/bolum01/lesson01.dart';
import '../summary/bolum01/lesson01_summary.dart';

final List<Bolum> bolumListesi = [
  Bolum(
    bolumAdi: "Bölüm 1 - Temel Arayüz",
    dersler: [
      Lesson(
        title: '1. Ders',
        subtitle: 'Flutter’da Kolayca Arayüz Tasarlamak: Container, Row ve Column',
        summary: lesson01Summary,
        lessonPage: const Lesson01(),
        // codeText: '''// Buraya dersin kod içeriği metin olarak gelecek''',
      ),
      // Diğer dersler burada
    ],
  ),
  // Bölüm 2 vs...
];
