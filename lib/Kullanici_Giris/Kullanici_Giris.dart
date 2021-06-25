import 'package:buyukturktarihi_app/Anasayfa.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/Giris_Anasayfa.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/RegisterPage.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/SignInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';



class AuthTypeSelector extends StatefulWidget {
  @override
  _AuthTypeSelectorState createState() => _AuthTypeSelectorState();
}

class _AuthTypeSelectorState extends State<AuthTypeSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Firebase Türkiye - Kullanıcı Girişi'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Kayıt Ol Butonu
          Container(
            child: SignInButtonBuilder(
              icon: Icons.person_add,
              backgroundColor: Colors.indigo,
              text: 'Kayıt Ol',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
          ),
          //Giriş Yap Butonu
          Container(
            child: SignInButtonBuilder(
              icon: Icons.verified_user,
              backgroundColor: Colors.orange,
              text: 'Giriş Yap',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  FirebaseAuth.instance.currentUser == null
                      ? SignInPage()
                      : Anasayfa(),

                ),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}


//Bir Kimlik doğrulama turu [Authentication Type] seçmek için
/*
class AuthTypeSelector extends StatelessWidget {
  @override

*/