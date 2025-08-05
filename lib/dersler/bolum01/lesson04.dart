import 'package:flutter/material.dart';


class Lesson04 extends StatelessWidget {
  const Lesson04({Key? key}) : super(key: key);

  final url = 'https://img.icons8.com/?size=100&id=WesMBYvcOgBp&format=png&color=000000';
  final instagram ='https://img.icons8.com/?size=100&id=32292&format=png&color=000000';
  final twitter = 'https://img.icons8.com/?size=100&id=phOKFKYpe00C&format=png&color=000000';
  final github = 'https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=change_history';
  final linkedin = 'https://img.icons8.com/?size=100&id=13930&format=png&color=000000';
  final whatsapp = 'https://img.icons8.com/?size=100&id=BkugfgmBwtEI&format=png&color=000000';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Profil Sayfası'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(url),
                ),
                SizedBox(height: 16), // Boşluk
                Text(
                  'Hafize Şenyıl', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),),
                Text(
                  'Flutter Geliştiricisi', 
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),),
                SizedBox(height: 24), // Boşluk
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                          children: [
                            Text(
                              '1.5K', 
                              style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold,),),
                            Text(
                              'Takipçi',)
                          ],
                        ),),
                        Expanded(
                          child: Column(
                          children: [
                            Text(
                              '2.5K', 
                              style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold,),),
                            Text(
                              'Takip',)
                          ],
                        ),),
                        Expanded(
                          child: Column(
                          children: [
                            Text(
                              '155', 
                              style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold,),),
                            Text(
                              'Gönderi',)
                          ],
                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // yazı soldan başlasın ortlamasın
                      children: [
                        Text("Hakkımda",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                        SizedBox(height: 8,),
                        Text('Flutter ile mobil geliştirmeyi seviyorum. Yeni teknolojileri öğrenmek ve projeler geliştirmek benim için heyecan verici.'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // yazı soldan başlasın ortlamasın
                      children: [
                        Text('İletişim Bilgilerim',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 8), // başlık ile ikonlar arası boşluk
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start, // sola hizalama
                        children: [
                          CircleAvatar(
                            radius: 15,
                             backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(instagram),),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 13,
                             backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(twitter),),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 15,
                             backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(whatsapp),),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 15,
                             backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(github),),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 15,
                             backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(linkedin),),
                          SizedBox(width: 10,),
                        ],
                      )
                      ],
                      
                    ),
                    
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}