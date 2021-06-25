import 'package:buyukturktarihi_app/Ak_Hun_Devleti.dart';
import 'package:buyukturktarihi_app/AltinOrda_Devleti.dart';
import 'package:buyukturktarihi_app/Avar_Kaganligi.dart';
import 'package:buyukturktarihi_app/Avrupa_Hun_Devleti.dart';
import 'package:buyukturktarihi_app/Baburluler.dart';
import 'package:buyukturktarihi_app/Bati_Hun_Imparaorlugu.dart';
import 'package:buyukturktarihi_app/Buyuk_Hun_Imparatorlugu.dart';
import 'package:buyukturktarihi_app/Buyuk_Selcuklu_Imparatorlugu.dart';
import 'package:buyukturktarihi_app/Deyimler.dart';
import 'package:buyukturktarihi_app/Gazneliler.dart';
import 'package:buyukturktarihi_app/Gokturk_Kaganligi.dart';
import 'package:buyukturktarihi_app/Hakkinda.dart';
import 'package:buyukturktarihi_app/Harezmsahlar_Devleti.dart';
import 'package:buyukturktarihi_app/Hazar_Kaganligi.dart';
import 'package:buyukturktarihi_app/Karahanlilar.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/Giris_Anasayfa.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/Kullanici_Giris.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/SignInPage.dart';
import 'package:buyukturktarihi_app/OnAlti_TurkDevleti.dart';
import 'package:buyukturktarihi_app/Osmanli_Imparatorlugu.dart';
import 'package:buyukturktarihi_app/Raporlar/PieChartSample3.dart';
import 'package:buyukturktarihi_app/Soru_Coz.dart';
import 'package:buyukturktarihi_app/Sorular_ve_Cevaplar.dart';
import 'package:buyukturktarihi_app/Sorulari_Bitir.dart';
import 'package:buyukturktarihi_app/Timurlular.dart';
import 'package:buyukturktarihi_app/Uygur_Kaganligi.dart';
import 'package:buyukturktarihi_app/views/albums_views.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



import 'Anasayfa.dart';
import 'package:buyukturktarihi_app/sqllite/Db_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AnaGiris());
}

class AnaGiris extends StatelessWidget { //durumsuz
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.red
      ),
      home: Anasayfa(),
      routes: linkler, // linklerim olacak. linkleri oluşturdukça geleceğiz buraya!!!
      debugShowCheckedModeBanner: false,
    );
  }

 var linkler = <String,WidgetBuilder>{
    "/OnAlti_TurkDevleti": (BuildContext context) => OnAlti_Turk_Devleti(),
   "/Buyuk_Hun_Imparatorlugu": (BuildContext context) => Buyuk_Hun_Imparatorlugu(),
   "/Bati_Hun_Imparatorlugu": (BuildContext context) => Bati_Hun_Imparatorlugu(),
   "/Avrupa_Hun_Devleti": (BuildContext context) => Avrupa_Hun_Devleti(),
   "/Ak_Hun_Devleti": (BuildContext context) => Ak_Hun_Devleti(),
   "/Gokturk_Kaganligi": (BuildContext context) => Gokturk_Kaganligi(),
   "/Avar_Kaganligi": (BuildContext context) => Avar_Kaganligi(),
   "/Hazar_Kaganligi": (BuildContext context) => Hazar_Kaganligi(),
   "/Uygur_Kaganligi": (BuildContext context) => Uygur_Kaganligi(),
   "/Karahanlilar": (BuildContext context) => Karahanlilar(),
   "/Gazneliler": (BuildContext context) => Gazneliler(),
   "/Buyuk_Selcuklu_Imparatorlugu": (BuildContext context) => Buyuk_Selcuklu_Imparatorlugu(),
   "/Harezmsahlar": (BuildContext context) => Harezmsahlar(),
   "/AltinOrda_Devleti": (BuildContext context) => AltinOrda_Devleti(),
   "/Timurlular": (BuildContext context) => Timurlular(),
   "/Baburluler": (BuildContext context) => Baburluler(),
   "/Osmanli_Imparatorlugu": (BuildContext context) => Osmanli_Imparatorlugu(),
   "/Hakkinda": (BuildContext context) => Hakkinda(),
   "/Soru_Coz": (BuildContext context) => Soru_Coz(),
   "/Sorulari_Bitir": (BuildContext context) => Sorulari_Bitir(),
   "/DBTestPage": (BuildContext context) => DBTestPage(),
   "/AuthTypeSelector": (BuildContext context) => AuthTypeSelector(),
   "/PieChartSample3": (BuildContext context) => PieChartSample3(),
   "/albums_views": (BuildContext context) => Album_views(),
   "/SignInPage": (BuildContext context) => SignInPage(),
   "/Giris_Anasayfa": (BuildContext context) => Giris_Anasayfa(),
   "/Deyimler": (BuildContext context) => Deyimler(),
  };



}
