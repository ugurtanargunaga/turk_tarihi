import 'package:flutter/material.dart';
class Bati_Hun_Imparatorlugu extends StatefulWidget {
  @override
  _Bati_Hun_ImparatorluguState createState() => _Bati_Hun_ImparatorluguState();
}

class _Bati_Hun_ImparatorluguState extends State<Bati_Hun_Imparatorlugu> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Batı Hun İmparatorluğu'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063858.Jpeg',
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
                    'Batı Hun İmparatorluğu veya Avrupa Hun İmparatorluğu, 376 yılında başlayan çeşitli akınlarla Avrupadaki Hun etkisinin artmasının kuruluşuna zemin hazırladığı, 434 ile 469 yılları arasında hüküm süren Hun kavimlerinin birleşmesi ile oluşmuş bir bozkır konfederasyonu. 350 yılında Avrasya steplerinden batı yönüne hareket ederek; dönemlerine göre gelişmiş silah ve donanımları, yüksek hızları ve savaş taktikleriyle diğer kavimleri sürerek ya da egemenlik altına alarak Doğu Avrupanın büyük bir kısmını işgal etmiş Hunlar, 434 yılında Atilla altında birleşerek yaklaşık 35 sene boyunca sürecek bir konfederasyon kurmuşlardır. Hunların baskısıyla oluşan bu hareketlilik Avrupanın sosyal, kültürel, demografik yapısını değiştiren ve bugünkü yapısının temellerini oluşturan Kavimler Göçünün başlamasında ve Batı Roma İmparatorluğunun yıkılmasında önemli bir etken olmuştur.',
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
