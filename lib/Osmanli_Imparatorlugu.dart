import 'package:flutter/material.dart';
class Osmanli_Imparatorlugu extends StatefulWidget {
  @override
  _Osmanli_ImparatorluguState createState() => _Osmanli_ImparatorluguState();
}

class _Osmanli_ImparatorluguState extends State<Osmanli_Imparatorlugu> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Osmanlı İmparatorluğu'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063871.Jpeg',
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
                    'Osmanlı İmparatorluğu veya Osmanlı Devleti (Osmanlı Türkçesi: دَوْلَتِ عَلِيّهٔ عُثمَانِیّه, romanize: Devlet-i Aliyye-i Osmâniyye), Oğuz Türklerinden  Osman Gazinin kurduğu Osmanoğlu Hanedanının hükümranlığında varlığını sürdürmüş çok uluslu Sünni Müslüman devlet. Bugünkü Türkiyenin Bilecik ilinin Söğüt ilçesinde kurulmuş bir beylik iken, 1453 yılında II. Mehmedin İstanbulu fethedip Bizans İmparatorluğuna son vermesiyle imparatorluk hâline gelmiştir. En geniş sınırlarına 1683 yılında ulaşmış; Orta Avrupanın bir bölümü ile Balkanların tamamı, Kuzey Afrikanın bir bölümü, Hicaz, Mezopotamya, Kafkasyanın bir bölümü ve Anadolu üzerinde hâkimiyet kurmuştur. 1699 yılında Karlofça Antlaşması sonrası gerilemeye başlamış ve 1922 yılında saltanatın kaldırılması ile birlikte yıkılmıştır. Osmanlı Devletinin bağımsız bir devlet olarak tarih sahnesine çıkması yaygın kabule göre 1299 yılında olmuştur. Ancak Prof. Dr. Halil İnalcık ve bazı diğer akademisyenler, Osmanlı Devletinin 1299da Söğütte değil 1302de Yalovada Bizansa karşı yaptığı Koyunhisar Muharebesi sonrasında devlet niteliğini kazandığını iddia ederler. İstanbul ile sınırlı bir şehir devletine dönüşmüş olan Doğu Roma (Bizans) İmparatorluğunu yıkmış, bazı tarihçilere göre bu Yeni Çağı başlatan olay olmuştur. Osmanlı İmparatorluğu gücünün doruğunda olduğu 16. ve 17. yüzyıllarda üç kıtaya yayılmış ve Balkanlar, Orta Doğu ve Kuzey Afrikanın büyük bölümünü egemenliği altında tutmuştur. Ülkenin sınırları batıda Cebelitarık Boğazı ve doğuda Hazar Denizi ve Basra Körfezine, kuzeyde Avusturya, Macaristan ve Ukraynanın bir bölümüne ve güneyde Sudan, Eritre, Somali ve Yemene uzanmaktaydı. Osmanlı İmparatorluğu 29 eyaletten ve özerklik tanınmış olan Boğdan, Erdel ve Eflak prensliklerinden oluşmaktaydı. Devlet zaman zaman denizaşırı topraklarda da söz sahibi olmuştur. Atlantik Okyanusundaki kısa süreli toprak kazanımları Lanzarote (1585), Madeira (1617), Vestmannaeyjar (1627) ve Lundy (1655) bu duruma örnek olarak gösterilebilir.',
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
