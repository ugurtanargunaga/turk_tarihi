import 'package:flutter/material.dart';
class Avrupa_Hun_Devleti extends StatefulWidget {
  @override
  _Avrupa_Hun_DevletiState createState() => _Avrupa_Hun_DevletiState();
}

class _Avrupa_Hun_DevletiState extends State<Avrupa_Hun_Devleti> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avrupa Hun Devleti'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063859.Jpeg',
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
                    '352 yılında Kama Tarkan Avrupa Hun İmparatorluğunu kurdu ve yönetimi 370 yılına kadar elinde bulundurarak Hazar ve çevresinde önemli bir güç haline gelerek hakimiyet alanını batıya doğru ilerletti.[kaynak belirtilmeli] Geçen 18 yıl, Hazar bölgesinde yaşayan Hunların teşkilatlanmasını ve Devlet düzenine geçmesini sağladı. 4. yüzyılın ortalarında Aral Gölü ile Hazar Denizinin kuzeyindeki Alan ülkesini ele geçirdikten sonra, 374 yılında Balamir komutasında İdil Nehri kıyılarında görünmüşler, Karadenizin kuzeyindeki düzlüklerde yaşayan Ostrogotları ve Vizigotları yenilgiye uğratmışlardır. 375 yılında Ostrogotlar ve Vizigotlar, Hunların saldırılarından dolayı batıya doğru yönelmişlerdir. Böylece Kavimler Göçü başlamıştır.Balamirden sonra 378 yılında Alypbi, Hunların lideri olmuştur. 378 yılında Hunlar, Tuna Nehrini geçmişler ve Trakyaya kadar ilerlemişlerdir. Hunlar, Trakyaya kadar ilerlemelerine rağmen Roma İmparatorluğundan bir direniş görmemişlerdir. Hunların baskısı altındaki barbar kavimler, Roma İmparatorluğunu zorlamaya başlamışlardır. Roma İmparatoru I. Theodosiusun 17 Ocak 395 tarihinde ölmesi üzerine Hunlar tekrar harekete geçmişlerdir. 395 yılında Hun orduları Balkanlar üzerinden Trakyaya akın yapmışlardır. Yine aynı yıl Kafkasyadan gelen Hunlar, bugün Lübnanda bulunan Sur şehrinde, Şanlıurfada ve Antakyada bir süre kalmışlar sonra tekrar Karadenizin kuzeyindeki topraklara dönmüşlerdir.',
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
