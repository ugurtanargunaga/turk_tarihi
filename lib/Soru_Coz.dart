import 'package:buyukturktarihi_app/Kullanici_Giris/SignInPage.dart';
import 'package:buyukturktarihi_app/Sorular_ve_Cevaplar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/button_builder.dart';

class Soru_Coz extends StatefulWidget {
  @override
  _Soru_CozState createState() => _Soru_CozState();
}

class _Soru_CozState extends State<Soru_Coz> {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarih Bilgini Ölç'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(
                'https://i.pinimg.com/originals/eb/33/e7/eb33e74c8fed3a19afc8a8fee82a0b3c.png',
                height: 200,
              ),
              Text(
                'Soru Çözüm Bölümüne Hoş Geldin!',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              Container(
                child: SignInButtonBuilder(
                  icon: Icons.verified_user,
                  backgroundColor: Colors.orange,
                  text: 'E-Mail İle Giriş Yap',
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                      FirebaseAuth.instance.currentUser == null
                          ? SignInPage() //kayıtlı kullanıcı yoksa signinpage'e gönder
                          : Sorular_ve_Cevaplar(),//giriş yaptıysa anasayfaya gönder.
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
              ),

            ],
          ),

        ),
      ),
    );
  }
}
