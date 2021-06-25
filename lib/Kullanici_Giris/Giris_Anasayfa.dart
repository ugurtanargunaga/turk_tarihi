import 'package:buyukturktarihi_app/Anasayfa.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/SignInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Giris_Anasayfa extends StatefulWidget {

  @override
  _Giris_AnasayfaState createState() => _Giris_AnasayfaState();
}

class _Giris_AnasayfaState extends State<Giris_Anasayfa> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giriş Anasayfa"),

        actions: [

          Builder(
            builder: (context) => IconButton(

              icon: Icon(Icons.login),
              onPressed: () async {
                await _auth.signOut();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Başarıyla Çıkış Yapıldı"),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Anasayfa(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
