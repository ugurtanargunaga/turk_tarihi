import 'package:flutter/material.dart';

class Karahanlilar extends StatefulWidget {
  @override
  _KarahanlilarState createState() => _KarahanlilarState();
}

class _KarahanlilarState extends State<Karahanlilar> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Karahanlılar'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063864.Jpeg',
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
                    'Devletin adı Kara ve Han iki Türkçe kelimeden oluşmuştur. "Kara", Türkçede siyahı, soyluluğu gösterir ve "han", doğrusu kağan, yöneticilere verilen tanhu, hakan, yabgu ve ilbey gibi Türkçe bir unvandır. Prof. Omeljan Pritsak, meseleyi daha başka açıdan ele alarak izah etmiştir. Türklerde siyah, kızıl, ak ve gök, dört yönü temsil etmektedir. Kara, kuzey tarafını gösterir ve ekseri şehirlerde ayrı olarak bu yönlerin kapılarının isimleri vardır. Belhin kuzey, yani Karanın yönü (tarafı) Türk kapısıdır. Güney kapısı Hint, batı kapısı Yahudi, doğu kapısı ise Çin kapısıdır. Kara aynı zamanda kuvvetli, cebbar ve cesur demektir. Bu bakımdan bu ismi almış olmalıdırlar. Gazneli Mahmuda Çinlilerin verdiği "Karahan" tabiri de aynı manada olmalıdır. "Kara", azamet yükseklik ve üstünlük demektir.[10] Mesela Türk ülkelerinden en doğudan batıya kadar rastlanan karasular, hep gür, coşkun su ve nehirlere verilmiştir.Kurucusu Bilge Kül Kadir Handır. Bilge Kül öldükten sonra oğulları Bazır ve Oğulçak devletin başına geçtiler. Devletin Batı kısmında hükümdar olan Oğulçak, Samanoğulları Devletindeki karışıklıklardan yararlanarak isyan eden bir Samanî şehzadesinin sığınma talebini kabul etti. Oğulçakın yeğeni Satuk Buğra, bu şehzade sayesinde Müslüman oldu ve Abdulkerim adını aldı. Bu olaydan sonra amcası Oğulçakı mağlup eden Abdulkerim Satuk Buğra, devletin başına geçti ve Han unvanını alarak İslamiyeti resmen kabul etti. Karahanlılar, İslamiyeti topluca kabul eden ilk Türk devletidir. Satuk Buğra Han 955 (Hîcrî 344) yılında, Kâşgarlı Mahmudun Divân-ı Lügatit-Türkte " اَرتُج " artuç: Ardıç olarak geçen altın Artuç köyünde gömülmüştür. Kaşgarda bu adda iki köy vardır. O zamanlar Kaşgarın kuzeyinde iki tane Artuç (Atuş, Artux) isminde köy vardı, birisinin adı altın[12] Artuç (Atuş, Artux), ikincisi üst Artuç (Atuş, Artux)dur.',
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
