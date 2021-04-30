import 'package:flutter/material.dart';
class Baburluler extends StatefulWidget {
  @override
  _BaburlulerState createState() => _BaburlulerState();
}

class _BaburlulerState extends State<Baburluler> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Babürlüler'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063870.Jpeg',
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
                    'Babürlüler veya Babür İmparatorluğu (Farsça: امپراتوری مغولی هند Empīrāturī-ye Moġolī-ye Hind (Hint, Moğol İmparatorluğu), Urduca: مغلیہ سلطنت Moghly-e Soltanat (Moğol Sultanlığı)[6] ya da kendi adlandırmalarıyla: گوركانى Gurakānī), günümüzdeki Hindistan ve çevresi üzerinde kurulmuş ve hüküm sürmüş Türk-Moğol kökenli devlet. Babür Şah tarafından 1526 yılında kurulan ve 17. yüzyılın sonu ile 18. yüzyılın başında imparatorluğun gücünün zirvesinde olduğu dönemde, Hindistanın büyük bölümüne hakim olan imparatorluğun nüfusunun o tarihlerde 3,2 milyon kilometre karelik bir bölge üzerinde 110 milyon ila 150 milyon arasında olduğu tahmin edilmektedir.[12] Babür İmparatorluğunun hakimiyet alanı, en geniş olduğu dönemde bugünkü Hindistan, Pakistan, Bangladeş ve Afganistanı kapsamaktaydı. Babür İmparatorluğunun diğer bayrağı İmparatorluğun klasik döneminin, Ekber Şahın 1556 yılında tahta çıkması ile başladığı kabul edilir. Onun yönetimi altında, Hindistan, kültürel ve ekonomik ilerlemenin yanı sıra farklı dinlerden olanların uyumu açısından çok iyi bir konuma ulaşmıştır. Babür İmparatorluğunun beşinci imparatoru Şah Cihanın saltanatı, imparatorluğun mimarlık ve sanat alanında altın çağıdır. Agradaki efsanevi Tac Mahalin yanı sıra pek çok mükemmel eser onun döneminde yapılmıştır. Babür İmparatorluğunun, Evrengzibin hükümdarlığı sırasında toprak genişlemesi doruk noktasına ulaştı. Onun döneminde 150 milyonluk nüfusu ile imparatorluk dünya nüfusunun dörtte birine hükmeder konumdaydı. 1739 yılında Nadir Şah güçleri tarafından Karnal Savaşında mağlup edilen Babür İmparatorluğu, 18. yüzyılın ortalarından itibaren idari ve ekonomik olarak zayıflamaya başladı. Son imparator Bahadır Şah IIın sadece şehir üzerinde otoritesi vardı. 1858 yılında bir isyan üzerine bölgeye müdahale eden İngilizlerce Babür İmparatorluğuna son verilerek Hindistan, Büyük Britanya İmparatorluğuna bağlanılmıştır.',
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
