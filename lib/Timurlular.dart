import 'package:flutter/material.dart';
class Timurlular extends StatefulWidget {
  @override
  _TimurlularState createState() => _TimurlularState();
}

class _TimurlularState extends State<Timurlular> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timurlular'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063869.Jpeg',
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
                    'Timur (Çağatayca: تیمور - Tēmür, Farsça: تیمور Timur), (8 Nisan 1336 - 18 Şubat 1405), Timur İmparatorluğunun kurucusu ve ilk hükümdarı. Çağatay ulusunu oluşturan kabilelerden Barlasların reisi olan Turagay ile Tekina Hatunun çocuğu olarak 1336da Semerkant yakınlarındaki Şehr-i-Sebze bağlı Hoca Ilgar köyünde dünyaya gelen Timur, 1370te Çağatay Hanlığının batısını kontrol altına alan askeri bir lider olarak kendini gösterdi. 1370ten itibaren düzenlediği seferlerle bugünkü Orta Asya, Rusya, İran, Hindistan, Afganistan, Azerbaycan, Gürcistan, Ermenistan, Irak ve Suriyeyi kapsayan toprakları ele geçirerek 1402de yapılan Ankara Savaşında Osmanlı padişahı Yıldırım Bayezidi mağlup edip esir alarak Anadoluya hakim oldu.',
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
