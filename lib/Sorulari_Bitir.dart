import 'package:flutter/material.dart';

class Sorulari_Bitir extends StatefulWidget {
  @override
  _Sorulari_BitirState createState() => _Sorulari_BitirState();

}

class _Sorulari_BitirState extends State<Sorulari_Bitir> {
  @override
  Widget build(BuildContext context) {

    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://i.pinimg.com/originals/eb/33/e7/eb33e74c8fed3a19afc8a8fee82a0b3c.png',
              height: 200,
            ),
            Column(
              children: [
                Text('Puanınız: ' +data[0].toString(),
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),

              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Anasayfaya Dön'),
            ),
          ],
        ),
      ),
    ); } }
