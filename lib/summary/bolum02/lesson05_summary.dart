// lib/lessons/summaries/lesson05_summary.dart

const String lesson05Summary = '''
Bu derste StatelessWidget kullanılarak sayaç uygulaması yapılmıştır. 
Ancak sayaç değeri artmasına rağmen ekrana yansımamaktadır çünkü StatelessWidget ile 
durum (state) yönetimi mümkün değildir. 

Ana Başlıklar:
- StatelessWidget: Durumu olmayan, sabit veriyle çalışan widget yapısıdır.
- FloatingActionButton: Ekranın köşesinde konumlanan, kullanıcı etkileşimi için kullanılan butondur.
- debugPrint: Konsola log mesajı yazdırmak için kullanılır.
- MaterialApp & Scaffold: Temel uygulama iskeletini oluşturur.
- Column: Widget’ları dikey sıralamak için kullanılır.

Neden Bu Ders Önemli?
- Stateless ve stateful widget farkını uygulamalı olarak anlamaya yardımcı olur.
- Arayüzde değişken verinin nasıl kontrolsüz kaldığını gösterir.
- Kullanıcı etkileşimiyle birlikte ekran güncellemesi gerektiren durumlarda Stateless yapıların yetersizliğini ortaya koyar.

Özet:
Bu derste Flutter ile basit bir sayaç uygulaması yapılmıştır. 
Ancak sayaç bir StatelessWidget içinde tanımlandığı için her butona basıldığında sayacın değeri artmasına rağmen
arayüzde değişiklik görülmez. Bu durum, durum yönetimi için StatefulWidget kullanımının gerekliliğini ortaya koyar.
''';
