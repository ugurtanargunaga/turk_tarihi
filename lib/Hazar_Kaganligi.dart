import 'package:flutter/material.dart';
class Hazar_Kaganligi extends StatefulWidget {
  @override
  _Hazar_KaganligiState createState() => _Hazar_KaganligiState();
}

class _Hazar_KaganligiState extends State<Hazar_Kaganligi> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hazar Kağanlığı'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063863.Jpeg',
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
                    'Hazar Kağanlığı ya da kısaca Hazarlar (Yunanca: Χάζαροι; İbranice: כוזרים‎, romanize: Kuzarim[2] Tatarca: Xäzärlär; Arapça: خزر; Rusça: Хазары; Farsça: خزر; Latince: Gazari[3][4]/Cosri[5]/Gasani[6][7]), 7. ve 11. yüzyıllar arasında; Hazar Denizinin çevresinde; Van Gölünden, Karadeniz kıyılarından, Kieve; Aral Gölünden, Macaristana kadar olan geniş topraklarda hüküm sürmüş, Doğu Avrupada düzenli bir Türk devletidir. Hazar kelimesi, gez(mek) anlamına gelen kaz- kökünden türemiştir.[10] Ka-zar; gezer yani serbest dolaşan, bir yere bağlı olmayan anlamına gelmektedir.[11][12] Hudūd al-Ālam adlı esere göre, Hazar Kağanları Ansa sülalesindendir. (bunun Batı Göktürkün Aşina olduğuna dair iddialar bulunmaktadır) ve Orta Asyadan gelmişlerdir. Hazarların bir süre Büyük Hun Devletine bağlı kavimler arasında bulunmuş olmaları ihtimali vardır. 586dan sonraki Bizans kaynaklarında Hazarlar, "Türkler" olarak geçmektedir. İslamiyetten önce Türklerin tamamına yakını Tengrici olmasına rağmen Hazar Kağanı ve yönetim kademesindeki Türklerin çoğu, 740lı yıllarda Museviliği benimsemiştir. Birkaç akademisyen, Hazar Türklerinin birçok Doğu Avrupa ve Rus Yahudisinin ataları olduğunu düşünmektedir. Tüm bunların yanı sıra Hazarlar dini toleransın yaygın olduğu ve Tengriciliğin serbestçe yayıldığı bir toplumdu.',
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
