import 'package:flutter/material.dart';
class Avar_Kaganligi extends StatefulWidget {
  @override
  _Avar_KaganligiState createState() => _Avar_KaganligiState();
}

class _Avar_KaganligiState extends State<Avar_Kaganligi> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avar Kağanlığı'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063862.Jpeg',
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
                    'Göktürkler komşuları olan Çin, Sasani (İran) ve Bizans İmparatorluğu ile askerî, siyasi ve ekonomik ilişkiler kurdular. Devletin basılan paralarda, diplomaside vb. alanlarda kullandığı resmî diller Soğdca ve Cücencedir. Avarlar, Orta Avrupa’da, Frank krallığı ile Bizans imparatorluğu arasında, eski Hun, Sabar kalıntıları ve Ogur (Bulgar)’lar gibi Türk kitlelerinin desteği ile kudretli bir devlet kurarak, çeşitli Germen ve özellikle kalabalık îslav kabilelerini hakimiyetleri altına almak suretiyle 250 sene kadar Avrupa siyasetine yön veren bir imparatorluk olmuştur.Avarlarda devlet örgütlenmesi tümüyle askerî temellere dayanıyordu. Ordudaki her askerin silahları ve cüppeleri vardır. Avar Kağanlığı çok uluslu bir devlet olduğu için orduda Avarlar ile birlikte Cermenler, Slavlar ve Bizanslılar da vardır. Avarlar kendilerine bağladıkları kavimleri sınır bölgelerine yerleştiriyorlardı. Avar ordusu atlı ve yaya birliklerinden oluşuyordu. Atlı birlikleri Avarlardan, yaya birlikleri ise Avarlara bağlı Slavlar, Germe nler gibi Avrupalı kavimlerden kurulmuştu.',
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
