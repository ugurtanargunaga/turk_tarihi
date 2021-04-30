import 'package:flutter/material.dart';
class Buyuk_Selcuklu_Imparatorlugu extends StatefulWidget {
  @override
  _Buyuk_Selcuklu_ImparatorluguState createState() => _Buyuk_Selcuklu_ImparatorluguState();
}

class _Buyuk_Selcuklu_ImparatorluguState extends State<Buyuk_Selcuklu_Imparatorlugu> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Büyük Selçuklu İmparatorluğu'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063866.Jpeg',
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
                    'Büyük Selçuklu İmparatorluğu (Farsça: آل سلجوق), Orta Çağda Oğuz Türklerinin Kınık boyu tarafından kurulan Türk-İran kültürüne[10] dayalı Sünni Müslüman bir imparatorluk.[11] Selçuklular Hindukuş Dağlarından Batı Anadoluya ve Orta Asyadan Basra Körfezine kadar uzanan geniş bir alanı kontrol ettiler. Aral Gölü yakınında güç kazandıktan sonra ilk olarak Horasanı ele geçiren Selçuklular, buradan İran içlerine doğru ilerledi ve ardından Anadoludaki şehirleri kontrol altına aldı. Büyük Selçuklu İmparatorluğu, Tuğrul Bey (1016–63) tarafından 1037de kuruldu. Tuğrulu büyüten dedesi ve Oğuz Yabgu Devletinde yüksek makam sahibi olan Selçuk Bey, adını hem ülkeyi yöneten hanedana hem de imparatorluğa verdi. Devlet kurulduktan kısa süre sonra İslam dünyasının merkezi otoriteden yoksun parçalanmış siyasi haritasını birleştirdi ve daha sonra Haçlı Seferlerinin birinci ve ikincisinde kilit rol oynadı. Dili ve kültürüyle yoğun bir şekilde İranlılaşan Selçuklular,Türk-İran geleneğinde büyük bir gelişme sağladı[15] ve İran kültürünü Anadoluya taşıdı. Türk boylarının ele geçirilen yerlerde devlet otoritesini artırmak gibi siyasi amaçlar doğrultusunda devlet yöneticileri tarafından ülkenin kuzeybatısına yerleştirilmesi ile bu bölgelerde Türkleştirme süreci başladı.',
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
