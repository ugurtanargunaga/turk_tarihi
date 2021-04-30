import 'package:flutter/material.dart';
class Harezmsahlar extends StatefulWidget {
  @override
  _HarezmsahlarState createState() => _HarezmsahlarState();
}

class _HarezmsahlarState extends State<Harezmsahlar> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harezmşahlar'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063867.Jpeg',
                ),
              ),
              OutlinedButton(
                child: Text('Göster / Gizle'),
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              ),
              Visibility(
                visible: isVisible,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  //  height: 600, -->Yükseklik vermedik ki yazıya göre otomatik olarak dolsun.
                  child: Text(
                    'Harezmşahlar veya Harzemşahlar Devleti (Farsça: خوارزمشاهیان Hārezmşāhiyān), Orta Asyada Harezm bölgesinde Kutbeddin Muhammed Harezmşah tarafından kurulan bir Türk-İslam devletidir.[2][3] Bu devlet, Anadolu Selçuklu Devleti ile 1230 yılında yapılan Yassı Çemen savaşı sonucunda iyice zayıflamış, 1231 yılında Celaleddin Harezmşahın ölümü ile yıkılmıştır.Amuderya bölgesi Orta Çağda "Harezm" (Harizm) ve hükümdarlar "Harezmşah" olarak anılırdı. XI. yüzyılın sonlarına doğru bu bölgede kurulan yerli etnik bir topluluk olan ve Türkçe konuşan yerel halkın kurduğu bu devletin adı da Harezmşahlardır.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.justify,
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
