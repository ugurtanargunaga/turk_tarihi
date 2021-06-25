import 'package:buyukturktarihi_app/Kullanici_Giris/Kullanici_Giris.dart';
import 'package:buyukturktarihi_app/Kullanici_Giris/SignInPage.dart';
import 'package:buyukturktarihi_app/OnAlti_TurkDevleti.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'YanMenu.dart';

class Anasayfa extends StatefulWidget {

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('AnasayfaVeri');



  final FirebaseAuth _auth = FirebaseAuth.instance;
  GlobalKey<ScaffoldState> _scaffold =
      GlobalKey<ScaffoldState>(); //menünün açılması için onpresse globall key

  bool isVisible = false; //çıkış yap butonunun gizliliğini kontrol ediyorum
  bool GirisYapButonu_ilkGorunus = true;

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.currentUser == null
        ? isVisible = false //ilk açılışta giriş yapılmamışsa görünmesin
        : isVisible = true;

    FirebaseAuth.instance.currentUser == null
        ? GirisYapButonu_ilkGorunus =
            true //ilk açılışta giriş yapılmamışsa görünmesin
        : GirisYapButonu_ilkGorunus = false;

    final List<String> imageList = [
      "https://im.haberturk.com/2014/06/27/ver1578211859/962619_414x414.jpg",
      "https://birparcatuhaftik.com/wp-content/uploads/2020/07/D5pUcO8W4AA_c90.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/1/1d/Yavuz_Sultan_I._Selim_Han.jpg",
      "https://i.pinimg.com/736x/1a/d0/c8/1ad0c85ddc6c5983adbfb8945e7cd441.jpg",
    ];

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
        actions: [
          Builder(
            builder: (context) => Visibility(
              visible: isVisible, //Çıkış Yap Butonu ilk Açılışta Görünmesin
              child: IconButton(
                icon: Icon(Icons.arrow_back), //çıkış yap butonu
                onPressed: () async {
                  await _auth.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FirebaseAuth.instance.currentUser == null
                              ? Anasayfa()
                              : Anasayfa(),
                    ),
                  );
                },
              ),
            ),
          ), //Çıkış Yap Builder

//ilk giriş
          Builder(
            builder: (context) => Visibility(
              visible:
                  GirisYapButonu_ilkGorunus, //Çıkış Yap Butonu ilk Açılışta Görünmesin
              child: IconButton(
                icon: Icon(Icons.login_rounded), //çıkış yap butonu
                onPressed: () async {
                  ;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FirebaseAuth.instance.currentUser == null
                              ? AuthTypeSelector()
                              : Anasayfa(),
                    ),
                  );
                },
              ),
            ),
          ), //Giriş Yap Builder
        ],
        title: Text(
          'Büyük Türk Tarihi',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ), //AppBar Text
        centerTitle: true, //Appbar yazısını ortaya aldık
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 25.0, 0, 0),
                height: 250,
                child: CarouselSlider(
                  options: CarouselOptions(
                    pageSnapping: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    height: 250.0,
                  ),
                  items: imageList
                      .map(
                        (e) => ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(e, fit: BoxFit.fitWidth),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('AnasayfaVeri')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Icon(
                        Icons.error,
                        size: 80,
                        color: Colors.red,
                      ),
                    );
                  }
                  final QuerySnapshot querySnapshot = snapshot.data;
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap:
                        true, //sınırsız yükseklik verildi hatasının çözümü
                    itemCount: querySnapshot.docs.length,
                    itemBuilder: (context, index) {
                      final map = querySnapshot.docs[index].data();
                      return Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              child: Container(
                                width:
                                    300, //height koyarsam biraz saçma oluyor. ama koymazsam resime göre yer alıyor.
                                child: Stack(
                                  children: [
                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(),
                                      child: Image(
                                          image: NetworkImage(querySnapshot
                                              .docs[index]['AnasayfaResim'])),
                                    ),
                                    Container(
                                      alignment: Alignment.topCenter,
                                      color: Colors.red,
                                      height: 25,
                                      child: Text(querySnapshot.docs[index]
                                          ['AnasayfaBaslik'], style: TextStyle(fontSize: 22.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      );

                    },
                  );

                },
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                child: Container(
                  width:
                  300, //height koyarsam biraz saçma oluyor. ama koymazsam resime göre yer alıyor.
                  child: Stack(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(),
                        child: Image(image: AssetImage('assets/images/turk.jpg')),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OnAlti_Turk_Devleti()),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        color: Colors.red,
                        height: 25,
                        child: Text('Deneme', style: TextStyle(fontSize: 22.0,color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: YanMenu(),
    );
  }
}
