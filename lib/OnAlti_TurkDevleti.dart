import 'package:flutter/material.dart';

class OnAlti_Turk_Devleti extends StatefulWidget {
  @override
  _OnAlti_Turk_DevletiState createState() => _OnAlti_Turk_DevletiState();
}

class _OnAlti_Turk_DevletiState extends State<OnAlti_Turk_Devleti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarihteki Önemli Türk Devletleri'),
      ),
      body: SingleChildScrollView(
        child: Column(
          //genel sütun
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Buyuk_Hun_Imparatorlugu');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063872.Jpeg',
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child:
                        Text(
                          'Büyük Hun Devleti',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Bati_Hun_Imparatorlugu');
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.network(
                        'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063858.Jpeg',
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            'Batı Hun İmparatorluğu',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Avrupa_Hun_Devleti');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063859.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Avrupa Hun Devleti',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Ak_Hun_Devleti');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063860.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Ak Hun Devleti',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Gokturk_Kaganligi');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063861.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Göktürk Kağanlığı',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Avar_Kaganligi');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063862.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Avar Kağanlığı',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Hazar_Kaganligi');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063863.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Hazar Kağanlığı',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Uygur_Kaganligi');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063873.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Uygur Kağanlığı',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Karahanlilar');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063864.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Karahanlılar',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Gazneliler');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063865.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Gazneliler',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Buyuk_Selcuklu_Imparatorlugu');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063866.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Büyük Selçuklu Devleti',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Harezmsahlar');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063867.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Harezmşahlar',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/AltinOrda_Devleti');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063868.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Altın Orda Devleti',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Timurlular');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063869.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Timur Devleti',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Baburluler');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063870.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Babür İmparatorluğu',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Osmanli_Imparatorlugu');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063871.Jpeg',
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Osmanlı İmparatorluğu',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
