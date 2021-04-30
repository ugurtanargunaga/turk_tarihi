import 'package:flutter/material.dart';
class Uygur_Kaganligi extends StatefulWidget {
  @override
  _Uygur_KaganligiState createState() => _Uygur_KaganligiState();
}

class _Uygur_KaganligiState extends State<Uygur_Kaganligi> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uygur Kağanlığı'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063873.Jpeg',
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
                    'Orhun Irmağı kıyısında başkenti Ordu-balık kentini kuran ilk Uygur Kağanı Kutluk Bilge Kül iki yıllık bir hükümdarlıktan sonra 747de öldü. Yerine oğlu Moyen-çor (747-759) kağan oldu. Moyen-çorun etkinliklerini Orhun-Selenga ırmakları arasındaki Şine-usu Gölü yakınında diktirdiği "bengü taş"tan izlemek mümkündür. Buna göre öncelikle aralarında hep yakın ilişkiler olan Dokuz Oğuz boylarını derledi. Ardından Orhun-Ötüken bölgesinin etrafında konan göçen ve Türkçe konuşan boyları denetimi altına alma politikası gütmeye başladı. Bu çerçevede, kuzeyde Yenisey Nehri havalisindeki Kırgızlarla, Altay Dağları ile Tanrı Dağları arasında bulunan Karluklar ve onlara yardım eden daha batıdaki Türgişlerle, Yenisey, Obi ve İrtiş ırmakları arasında bulunan Basmıl, Dokuz Tatar ve Çiklerle savaşmış, bunların tamamını kendi kağanlığına bağlamıştır. Bu arada savaştığı boylar arasında belirtilen Sekiz Oğuzların Göktürklerin etrafa dağılma sürecine giren asal budunu olma olasılığı yüksektir. Böylece Türk soylu boy ve budunları denetimine alan Moyen-çor Uygur Kağanlığını sağlam temellere oturtmuş bulunuyordu.681-744 yıllar arasında faaliyet göstermiş bir Türk devletidir.',
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
