import 'package:flutter/material.dart';

class Buyuk_Hun_Imparatorlugu extends StatefulWidget {
  @override
  _Buyuk_Hun_ImparatorluguState createState() =>
      _Buyuk_Hun_ImparatorluguState();
}

class _Buyuk_Hun_ImparatorluguState extends State<Buyuk_Hun_Imparatorlugu> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Büyük Hun İmparatorluğu'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063872.Jpeg',
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
                    'Çin kayıtlarında “Hiung-nu” olarak geçen Hunlar, Çin’in kuzeybatısında bulunan Moğolistan bölgesinde yaşamlarını sürdürüyorlardı. Kabile halinde yaşayan Hunlar, çevre kabilelerle sürekli yaşam mücadelesi veriyorlardı. Bu durum, kabilenin başına Teoman’ın geçmesiyle değişmeye başladı.Teoman, liderlik vasfına sahip, ileri görüşlü, savaşçı biriydi. Öncelikle çevredeki kabileleri kendi kabilesine kattı. Gittikçe güçlenen Teoman çevre bölgedeki Hunları ve diğer kavimleri de himayesi altına aldı. Böylece Hunlar, Moğollar, Türkler ve Tunguzlardan oluşan muazzam bir güç kazanmış oldu. Teoman, diğer kavimleri de himayesine aldıktan sonra merkezi bir yönetim oluşturdu. Bu yönetimin sonucunda da MÖ 220’de Büyük Hun İmparatorluğunu kurdu.Büyük Hun İmparatorluğunun kurucusu Teoman’dır. MÖ 3. yüzyılda yaşamıştır. MÖ 220-209 tarihleri arasında hükümdarlık yapmıştır. O dönemde Türkler devlet başkanlarına “Yabgu” diyorlardı. Bu yüzden tarihte Teoman Yabgu olarak da bilinir. Teoman, Büyük Hun Devletini kurarak dağınık vaziyette olan Hunlar, Moğollar, Türkler ve Tunguzları bir araya getirmiştir. Kavimlerin birleşmesiyle büyük bir güç oluşturarak, Çin’in başına bela olmuşlardır. Teoman, Çin’le yapılan bir anlaşma sonucunda Çinli bir gelin almış ve ondan da bir oğlu olmuştur. Çinli gelin kendi oğlunun tahta geçmesi için Teoman’ın oğlunu sürgüne göndertmiş, hatta öldürmek istemiştir. Bunun üzerine Mete de, babasına isyan ederek, bir av sırasında babasını öldürmüş ve tahta geçmiştir.',
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
