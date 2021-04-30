import 'package:buyukturktarihi_app/Sorulari_Bitir.dart';
import 'package:flutter/material.dart';

class Sorular_ve_Cevaplar extends StatefulWidget {
  final username;

  const Sorular_ve_Cevaplar({Key key, @required this.username})
      : super(key: key);
  @override
  _Sorular_ve_CevaplarState createState() => _Sorular_ve_CevaplarState();
}

class _Sorular_ve_CevaplarState extends State<Sorular_ve_Cevaplar> {
  int mevcutsoru = 0;
  String mevcutcevap = '';
  int puan=0;

  void BitireYolla(){
    var data = [];
    data.add(puan.toString());
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Sorulari_Bitir(),
          settings: RouteSettings(
            arguments: data,
          ),
        ));
  }
  
  var sorular = [
    {
      'soru': 'Tarihte Türk adıyla kurulan ilk Türk devleti hangisidir?',
      'cevaplar': ['Türgişler', 'İskitler', 'Göktürk', 'Hazarlar'],
      'dogrucevap': 'Göktürk'
    },
    {
      'soru': 'Hangi Türk devleti daha önce kurulmuştur?',
      'cevaplar': ['Uygurlar', 'Avarlar', 'Hunlar', 'Emeviler'],
      'dogrucevap': 'Hunlar'
    },
    {
      'soru': 'Çift başlı kartal hangi devletin sembolüdür?',
      'cevaplar': ['Çağatay Hanlığı', 'Altın Orda Devleti', 'Fatimiler', 'Selçuklular'],
      'dogrucevap': 'Selçuklular'
    },
    {
      'soru': 'Onluk sistem adı verilen askeri teşkilatı ilk defa kuran Türk komutan kimdir?',
      'cevaplar': ['Fatih Sultan Mehmet', 'Mete Han', 'Osman Bey', 'Sultan Alparaslan'],
      'dogrucevap': 'Mete Han'
    },
    {
      'soru': 'Orhun Kitabeleri hangi Türk topluluğundan kalmıştır?',
      'cevaplar': ['Göktürkler', 'Batı Hun', 'Uygurlar', 'Harezmşahlar'],
      'dogrucevap': 'Göktürkler'
    },
    {
      'soru':
          'Maniheizm inancına sahip Türk topluluğu hangisidir?',
      'cevaplar': ['Uygurlar', 'Karahanlılar', 'Sakalar', 'Gazneliler'],
      'dogrucevap': 'Uygurlar'
    },
    {
      'soru':
          'İslamiyeti kabul eden ilk Türk boyu hangisidir?',
      'cevaplar': ['Peçenekler', 'Kayılar', 'Karluklar', 'Hunlar'],
      'dogrucevap': 'Karluklar'
    },
    {
      'soru': 'Osmanlı padişahları arasında Sultan lakabını ilk hangisi kullanmıştır?',
      'cevaplar': ['I.Mehmet', 'Kanuni', 'I.Murat', 'Abdulhamid'],
      'dogrucevap': 'I.Murat'
    },
    {
      'soru': ' Tarihte en uzun süre varlık gösteren Türk devleti hangisidir?',
      'cevaplar': ['Osmanlı Devleti', 'Karahanlılar', 'Göktürkler', 'Selçuklu Devleti'],
      'dogrucevap': 'Osmanlı Devleti'
    },
    {
      'soru': 'Ülkemize Türkiye ismini tarihte ilk veren millet hangisidir?',
      'cevaplar': ['İtalyanlar', 'İngilizler', 'Çinliler', 'Ruslar'],
      'dogrucevap': 'Çinliler'
    },
  ];
  void kontrolEt() {
    if (mevcutsoru > 8) { //DİZİLER 0'DAN BAŞLADIĞI İÇİN MEVCUT SORU 8'DEN BÜYÜKSE
      mevcutsoru = 0;
      BitireYolla();
    }
    else {
      if (mevcutcevap == sorular[mevcutsoru]['dogrucevap']) {
        puan = puan+10;
        mevcutsoru++;
      } else {
        puan = puan-10;
        mevcutsoru++;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    List cevaplistesi=[];
    for (var u in sorular[mevcutsoru]['cevaplar']){
      cevaplistesi.add(u);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Soru Çözümleri'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Hoşgeldiniz:',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),

                    Text(
                      widget.username == null ? "Kullanıcı Yok" : widget.username,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Puanınız: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(puan.toString(),
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Mevcut Soru: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(mevcutsoru.toString(),
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(' / 10',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 100,
                      color: Colors.cyan,
                      child:
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          sorular[mevcutsoru]['soru'].toString(),
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          textAlign: TextAlign.center,

                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                    ),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = cevaplistesi[0].toString();
                      });
                      kontrolEt();
                    },
                    child: Text(
                      cevaplistesi[0],
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                    ),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = cevaplistesi[1].toString();
                      });
                      kontrolEt();
                    },
                    child: Text(
                      cevaplistesi[1],
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                    ),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = cevaplistesi[2].toString();
                      });
                      kontrolEt();
                    },
                    child: Text(
                      cevaplistesi[2],
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                    ),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = cevaplistesi[3].toString();
                      });
                      kontrolEt();
                    },
                    child: Text(
                      cevaplistesi[3],
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
