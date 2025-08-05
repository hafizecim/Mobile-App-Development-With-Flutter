import 'package:flutter/material.dart';


class Lesson02 extends StatelessWidget {
  const Lesson02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2. Ders',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8AB17D),
        elevation: 4,
        shadowColor: Colors.black45,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Esnek ve okunabilir arayüz oluşturma',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF287271),
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 24),
              Divider(color: Colors.grey.shade400, thickness: 1),
              const SizedBox(height: 24),
              Text(
                "Bu derste Flutter\ da düzen, metin stili ve kullanıcı deneyimi, için önemli olan detayları ele alıyoruz. Özellikle padding, margin,font stilleri ve responsive yapı ele alınmıştır.",
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.6,
                  color: Colors.black87,
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 40),
              // Örnek olarak ders notlarını vurgulamak için kutu ekleyebiliriz:
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: const Text(
                  "📌 Ders notları: Flutter'da layout ve stil önemlidir. "
                  "Responsive tasarım için Flexible ve Expanded widget'larını keşfedin.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
