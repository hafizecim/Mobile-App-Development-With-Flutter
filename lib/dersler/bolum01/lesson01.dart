import 'package:flutter/material.dart';



class Lesson01 extends StatelessWidget {
  const Lesson01({super.key});
  // debug görüntüü sismek için bu satırı kaldırabilirsiniz
  // final bool debugShowCheckedModeBanner = false;

  @override
  Widget build(BuildContext context) {
    var myPinkContainer = Container(
          color: const Color.fromARGB(255, 221, 110, 147), // Arka plan rengi
          height: 200, // Yükseklik
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Yatayda ortalar 2 konteyneri
            crossAxisAlignment: CrossAxisAlignment.center, // Dikeyde ortalar 2 konteyneri
            children: [
              myContainer(),
              myContainer(),
            ],
          ),
        );
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug banner'ı gizler
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Merhaba App"),
          backgroundColor: const Color.fromARGB(255, 116, 95, 153),
        ),
        body: myMainColumn(myPinkContainer),
        floatingActionButton: FloatingActionButton(
          // child: Text("Tıkla!"),  // Butonun içeriği
          onPressed: () {
            debugPrint(
              "Butona tıklandı!",
            ); // Butona tıklandığında konsola mesaj yazdırır
          },
          backgroundColor: Colors.amber,
          // child: Text("Tıkla!"),  // Butonun içeriği
          child: const Icon(Icons.access_alarm), // butonun arka plan rengi
        ),
      ),
    );
  }

  Column myMainColumn(Container myPinkContainer) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Dikeyde ortalar
        children: [ myPinkContainer,myPinkContainer],
      );
  }

  Container myContainer() {
    return Container(
        color: Colors.deepOrange,
        height: 150,
        width: 150,
        alignment: Alignment.center, // İçeriğin hizalanması //"Merhaba Flutter! merkeze
        //alignment: Alignment(1,-1), // İçeriğin hizalanması sağ üst köşe
        //alignment: Alignment.topright, // İçeriğin hizalanması sağ üst köşe
        padding: const EdgeInsets.all(8), // İçerik etrafında boşluk // turuncu kutunun içeriğine boşluk bırakır
        //margin: const EdgeInsets.all(8), // Dışarıdan boşluk // turuncu kurunun dışarıya bıraklığı
        margin: const EdgeInsets.symmetric(
          horizontal: 20, // Yatayda 20 birim boşluk
          vertical: 10, // Dikeyde 10 birim boşluk
        ),
        child: Container(
          color: Colors.lightBlue,
          width: 120,
          height: 120,
          alignment: Alignment.center, // İçeriğin hizalanması
          child: const Text("Merhaba Flutter!"),
           ),
        );
  }
}
