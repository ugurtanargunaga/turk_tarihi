import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'YanMenu.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  GlobalKey<ScaffoldState> _scaffold =
      GlobalKey<ScaffoldState>(); //menünün açılması için onpresse globall key


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu_open), //menü simgesini değiştirebilirsin.
          onPressed: () {
            _scaffold.currentState.openDrawer(); //menünün açılması için
          },
          tooltip:
              'Yan Menüyü Aç', //uzun uzun tıklayınca çıkan text (pek önemli değil)
        ),
        title: Text(
          'Büyük Türk Tarihi',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, //Appbar yazısını ortaya aldık
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //yukarı aşağı kaydırmak. scrroll
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width:
                      300, //height koyarsam biraz saçma oluyor. ama koymazsam resime göre yer alıyor.
                  child: Stack(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                        ),
                        child: Image(
                          image: NetworkImage('https://www.kitapmagazin.com/wp-content/uploads/2020/04/T%C3%BCrk-Devletleri.jpg'),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/OnAlti_TurkDevleti');
                        },
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        color: Colors.red,
                        height: 25,
                        child: Text(
                          'Önemli Türk Devletleri',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: Stack(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                        ),
                        child: Image(
                          image: NetworkImage('https://i4.hurimg.com/i/hurriyet/75/0x0/5f9c704367b0a9215cd63336.jpg'),
                        ),
                        onPressed: () {

                        },
                      ),

                      Container(
                        alignment: Alignment.topCenter,
                        color: Colors.red,
                        height: 25,
                        child: Text(
                          'Türk Konseyi',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 200,
                  child: Stack(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                        ),
                        child: Image(
                          image: NetworkImage('https://www.amoreiki.it/wp-content/uploads/2018/03/reiki-r-eligione.jpg'),
                        ),
                        onPressed: () {

                        },
                      ),

                      Container(
                        alignment: Alignment.topCenter,
                        color: Colors.red,
                        height: 25,
                        child: Text(
                          'Türklerin Din Tarihi',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: YanMenu(),
    );
  }
}

