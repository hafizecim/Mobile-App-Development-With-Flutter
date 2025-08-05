import 'package:flutter/material.dart';
import 'pages/lesson_detail.dart';

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
      title: '📚Flutter Dersleri',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)
            .copyWith(
              onSurface: Colors.black,
               // yazı rengi
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFFB9D6A1),
          centerTitle: true, 
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Color(0xFF287271),
            fontStyle: FontStyle.italic,
            fontFamily: 'Calibri',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      home: const LessonListPage(),
    );
  }
}

class LessonListPage extends StatelessWidget {
  const LessonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📚 Flutter Dersleri')),
      body: ListView.builder(
        itemCount: bolumListesi.length,
        itemBuilder: (context, bolumIndex) {
          final bolum = bolumListesi[bolumIndex];
          return Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: ExpansionTile(
              
              backgroundColor: Color(0xFFF9C89B),
              collapsedBackgroundColor: Color(0xFFF4D7A4),
              tilePadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              
              title: Text(
                bolum.bolumAdi,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF287271),
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
                    leading: const Icon(Icons.book, color: Color(0xFFF2A995)),
                    title: Text(
                      lesson.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Color(0xFFF2A995),
                      ),
                    ),
                    subtitle: Text(
                      lesson.subtitle,
                      style: const TextStyle(color: Colors.black87),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color(0xFFF2A995),
                    ),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
