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
            backgroundColor: Colors.blue.shade50,
            collapsedBackgroundColor: Colors.blue.shade100,
            tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            title: Text(
              bolum.bolumAdi,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),
            children: bolum.dersler.map((lesson) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(Icons.book, color: Colors.deepPurple),
                  title: Text(
                    lesson.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.deepPurple,
                    ),
                  ),
                  subtitle: Text(
                    lesson.subtitle,
                    style: const TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.deepPurple),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LessonDetailPage(lesson: lesson),
                      ),
                    );
                  },
                  splashColor: Colors.deepPurple.withOpacity(0.2),
                  hoverColor: Colors.deepPurple.withOpacity(0.1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
