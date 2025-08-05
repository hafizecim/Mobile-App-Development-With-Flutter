import 'package:flutter/material.dart';
import 'pages/lesson_detail.dart';
import 'data/lesson_data.dart'; 
import 'data/bolum_data.dart';  

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dersleri',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LessonListPage(),
    );
  }
}

class LessonListPage extends StatelessWidget {
  const LessonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Dersleri')),
      body: ListView.builder(
        itemCount: bolumListesi.length,
        itemBuilder: (context, bolumIndex) {
          final bolum = bolumListesi[bolumIndex];
          return ExpansionTile(
            title: Text(
              bolum.bolumAdi,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            children: bolum.dersler.map((lesson) {
              return ListTile(
                title: Text(lesson.title),
                subtitle: Text(lesson.subtitle),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LessonDetailPage(lesson: lesson),
                    ),
                  );
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}