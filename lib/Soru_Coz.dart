import 'package:buyukturktarihi_app/Sorular_ve_Cevaplar.dart';
import 'package:flutter/material.dart';

class Soru_Coz extends StatefulWidget {
  @override
  _Soru_CozState createState() => _Soru_CozState();
}

class _Soru_CozState extends State<Soru_Coz> {
  String username;
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Form(
                      key: _formKey, //yukarıdaki forma formkey ile ulaşabilirim
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          labelText: 'İsminizi Giriniz',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Kullanıcı Adını Giriniz";
                          } else {
                            return null; //validate işlemi bitti. kullanıcı değerleri vs girdi.
                          }
                        },
                        onSaved: (deger) {
                          username = deger;
                        },
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      _GirisButonu(),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _GirisButonu() => ElevatedButton(
      child: Text('Giriş Yap'),
      onPressed: () {
        if (_formKey.currentState.validate()) {
          //if içindeki değer true şekilde bittiyse
          _formKey.currentState.save();
          //debugPrint('Kullanıcı Adı : $username');
          /*if(username==username){
            debugPrint('Giriş Başarılı');
          }*/
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sorular_ve_Cevaplar(username: username,),
            ),
          );
        }
      });
}
