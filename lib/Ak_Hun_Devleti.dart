import 'package:flutter/material.dart';

class Ak_Hun_Devleti extends StatefulWidget {
  @override
  _Ak_Hun_DevletiState createState() => _Ak_Hun_DevletiState();
}

class _Ak_Hun_DevletiState extends State<Ak_Hun_Devleti> {
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
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063860.Jpeg',
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
                    'Ak Hun İmparatorluğu (Bizans kaynaklarında Eftalit, Çin kaynaklarında Ak Hiung-nu, Hint kaynaklarında ise Sveta-Hūna olarak geçer), dördüncü yüzyılın başlarında Isığ Gölü çevresinde Avarlara bağlı yaşarlarken bu yüzyılın ikinci yarısında Maveraünnehire ve Toharistana yayılmış bir Hun devleti. Hükümdarlık 5. yüzyılda Heftal denilen aileye geçtiğinden Eftalitler olarak da bilinirler.Batıya doğru ilerlemelerine devam ederek Çinin kuzeybatısındaki Gobi Çölünden Hazar Denizi kenarına kadar yayılan bir devlet kurmuşlardır. Ak Hunlar’ın güneye inen bir kolu da Kabil çevresinde bulunan Kuşanları yenerek Hindistana doğru ilerlemiş ve Hindistanda bulunan Gupta İmparatorluğunun 5. yüzılın sonlarında parçalanmasından sonra 510 yılında İndüs Vadisini ve Ganj Vadisini almışlardır. Fakat Hindistandaki Ak Hunlar altıncı yüzyılın ilk yarısından sonra tarih sahnesinden çekilerek yerli halk arasında kaybolmuşlardır. Batı Ak Hunları ise, bir taraftan Orta Asyada hâkimiyeti temin eden Göktürklerin bir taraftan da İranda hüküm süren Sasanilerin arasında kalmışlar, iki taraftan saldıran kuvvetli düşmanları ile başa çıkamayarak 567 yılında tarih sahnesinden silinmişlerdir.',
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
