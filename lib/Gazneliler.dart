import 'package:flutter/material.dart';
class Gazneliler extends StatefulWidget {
  @override
  _GaznelilerState createState() => _GaznelilerState();
}

class _GaznelilerState extends State<Gazneliler> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gazneliler'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063865.Jpeg',
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
                    'Gazneliler (Farsça: غزنویان Ghaznaviyān), 963-1186 yılları arasında Maveraünnehir, Afganistan, Hindistanın kuzeyi ve Horasanda hüküm sürmüş olan Türk devleti. Gazneliler adlarını başkent edindikleri, hâlen Afganistan sınırları içinde bulunan Gazne şehrinden almıştı. Gazne Devletinden önce bu topraklarda hüküm sürmüş olan Fars asıllı Samanîlerin siyasi ve kültürel etkisinden dolayı Gazneli Türkler, zaman içerisinde Farslaşmışlardır. Gaznelilerin kurucusu sayılan Alp Tegin, Samanîlerin ordu komutanlarındandı. Ancak hanedanlığın tam anlamıyla kuruluşu, onun damadı Sebük Tigin döneminde mümkün olmuştur. Sebük Tigin, Gazne şehrini başkent yaparak Samanî sultanlarının egemenliğinden kurtulmuştur. Sebük Teginin oğlu Sultan Mahmut döneminde imparatorluğun sınırları Ceyhundan İndus Nehrine, oradan da Hint Okyanusuna kadar uzandı ve Rey ve Hamedanı da kapsadı. I. Mesut döneminde Gaznelilere ait, köklü ve büyük toprakların bir kısmı kaybedilmiştir. Batı bölgelerinin neredeyse tamamı, Dandanakan Savaşı sonrasında Selçuklu Devletinin kontrolüne geçmiş ve elde Afganistan, Belucistan ve Pencap bölgeleri kalmıştı. Selçukluların 1157de dağılması, Gaznelilere pek yarar sağlamadı. Bu karışık ortamdan güçlenerek çıkan Gurlular, 1151de Behramşahı yenilgiye uğratarak Gazneyi ele geçirdiler. Bundan sonra hükümdarlıklarını Lahora çekilerek devam ettiren ve İslam dinini Hindistanın içlerine kadar yaymış olan Gaznelilerin son hükümdarı Hüsrev Melikin Gurlular tarafından 1186da esir alınmasından sonra Gazne Devleti kesin olarak sona erdi. Gaznelilerin en parlak dönemi Sultan Mahmut dönemidir.',
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
