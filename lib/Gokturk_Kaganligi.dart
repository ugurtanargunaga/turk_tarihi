import 'package:flutter/material.dart';

class Gokturk_Kaganligi extends StatefulWidget {
  @override
  _Gokturk_KaganligiState createState() => _Gokturk_KaganligiState();
}

class _Gokturk_KaganligiState extends State<Gokturk_Kaganligi> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Göktürk Kağanlığı'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063861.Jpeg',
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
                    'Göktürk Kağanlığı, Gök Türkler veya Kök Türkler, Kül Tigin ve Bilge Kağan yazıtlarında 𐱅𐰇𐰼𐰰 (okunuşu sağdan sola doğru: Türük) veya 𐰜𐰇𐰛 𐱅𐰇𐰼𐰰 (okunuşu sağdan sola doğru: Kök Türük)  ya da pek az kabul gören bir görüşe göre Ökük Türük, Tonyukuk Yazıtında ise 𐱅𐰇𐰼𐰛 (okunuşu sağdan sola doğru: Türk(Çince: 突厥 Pinyin: Tūjué; Wade-Giles: Tu-chüeh, Guangyun: dʰuət-kĭwɐt), 552-744 yılları arasında Orta Asya ve Çinde hükümdarlık sürdürmüş bir Türk devletidir. Göktürkler (MS 552-744), gerek ilk kez Türk adını kurdukları siyasi birliklere vermeleri ve gerekse de; Türkçenin bilinen en eski yazılı kaynaklarını vermeleri bakımından, Türk kültür ve edebiyat tarihi açısından çok önemli bir yere sahiptir. Türk adı bugün kullandığımız şekli ile ilk kez Göktürkler dönemine ait Orhun Yazıtlarında geçmektedir. "Türk" adıyla kurulmuş ve Türk adını resmî devlet adı olarak kullanan ilk Türk devletidir. Devletin kurucusu ve ilk önderi Bumin Kağandır. Bumin Kağanın kardeşi İstemi Yabgu ülkenin batı kanadını yönetirdi.  Göktürkler komşuları olan Çin, Sasani (İran) ve Bizans İmparatorluğu ile askerî, siyasi ve ekonomik ilişkiler kurdular. Devletin basılan paralarda, diplomaside vb. alanlarda kullandığı resmî diller Soğdca ve Cücencedir.',
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
