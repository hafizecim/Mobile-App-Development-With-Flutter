import 'package:flutter/material.dart';

class lesson06 extends StatelessWidget {
  const lesson06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink, // appbar arkaplan renklendirme
        useMaterial3: false, // daha yumuşak rekn geçişleri
        textTheme: TextTheme(),
      ),
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _sayac = 0;

  void _sayaciArttir() {
    debugPrint("1");
    setState(() {
      debugPrint("2");
      _sayac++;
      debugPrint('Sayacın şuanki değeri $_sayac');
    });
    debugPrint("3");
  }

  void _sayaciAzalt() {
    setState(() {});
    _sayac--;
    debugPrint('Sayacın şuanki değeri $_sayac');
  }


void _sayaciSifirla(){

  setState(() {
    _sayac = 0;
    debugPrint('Sayaç sıfırlandı $_sayac');
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bölüm 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Butona basılma sayısı',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displayMedium
              ?.copyWith(
                color: _sayac < 0 ? Colors.red : Colors.green // eğer sayac sıfırdan büyükse rengi green küükse kırmız olsun
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment:
            MainAxisAlignment.end, // buton sayfanın en sonunda konumlansın
        children: [
          FloatingActionButton(
            onPressed: () {
              _sayaciArttir();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _sayaciAzalt();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _sayaciSifirla();
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
