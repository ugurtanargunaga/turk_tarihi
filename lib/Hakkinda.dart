import 'package:flutter/material.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://i.pinimg.com/originals/eb/33/e7/eb33e74c8fed3a19afc8a8fee82a0b3c.png',
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006059 numaralı Uğurtan Argunaga tarafından 25 Haziran 2021 günü yapılmıştır.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
