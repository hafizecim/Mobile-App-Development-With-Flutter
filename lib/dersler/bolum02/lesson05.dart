import 'package:flutter/material.dart';

class Lesson05 extends StatelessWidget {
   const Lesson05({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink, // appbar arkaplan renklendirme
        useMaterial3: false, // daha yumuşak rekn geçişleri
        textTheme: TextTheme(

        )
      ),
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
   HomePage({super.key});
  var _sayac = 0;

  void _sayaciArttir(){
    _sayac++;
    debugPrint('Sayacın şuanki değeri $_sayac');
  }

  void _sayaciAzalt(){
    _sayac--;
    debugPrint('Sayacın şuanki değeri $_sayac');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bölüm 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Butona basılma sayısı',
             style: Theme.of(context).textTheme.labelLarge,),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displayMedium,),
          ],  

      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, // buton sayfanın en sonunda konumlansın
        children: [
          FloatingActionButton(
            onPressed: () {
              _sayaciArttir();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 4,),
          FloatingActionButton(
            onPressed: () {
              _sayaciAzalt();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

