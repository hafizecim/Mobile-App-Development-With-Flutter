import '../models/lesson_model.dart';
import '../dersler/bolum01/lesson01.dart';
import '../summary/bolum01/lesson01_summary.dart';


final List<Lesson> lessonList = [
  Lesson(
    title: '1. Ders',
    subtitle: 'Flutter’da Kolayca Arayüz Tasarlamak: Container, Row ve Column',
    summary: lesson01Summary,
    lessonPage: const Lesson01(),
    // codeText: '''// Buraya dersin kod içeriği metin olarak gelecek''',
  ),
];
