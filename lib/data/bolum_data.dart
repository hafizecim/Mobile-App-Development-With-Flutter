// lib/data/bolum_data.dart

import '../models/bolum_model.dart';
import '../models/lesson_model.dart';

import '../dersler/bolum01/lesson01.dart';
import '../summary/bolum01/lesson01_summary.dart';
import '../dersler/bolum01/lesson02.dart';
import '../summary/bolum01/lesson02_summary.dart';
import '../dersler/bolum01/lesson03.dart';
import '../summary/bolum01/lesson03_summary.dart';
import '../dersler/bolum01/lesson04.dart';
import '../summary/bolum01/lesson04_summary.dart';

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
      Lesson(
        title: '2. Ders',
        subtitle: 'Esnek ve okunabilir arayüz oluşturma',
        summary: lesson02Summary,
        lessonPage: const Lesson02(),
        // codeText: '''// Buraya dersin kod içeriği metin olarak gelecek''',
      ),
      Lesson(
        title: '3. Ders',
        subtitle: 'Row, Flexible ve Expanded ile esnek ekran düzeni oluşturma.',
        summary: lesson03Summary,
        lessonPage: const Lesson03(),
        // codeText: '''// Buraya dersin kod içeriği metin olarak gelecek''',
      ),
      Lesson(
        title: '4. Ders',
        subtitle: 'Profil Sayfası Tasarımı ve Sosyal Medya İkonları',
        summary: lesson04Summary,
        lessonPage: const Lesson04(),
        // codeText: '''// Buraya dersin kod içeriği metin olarak gelecek''',
      ),
      // Diğer dersler burada
    ],
  ),
  // Bölüm 2 vs...
];
