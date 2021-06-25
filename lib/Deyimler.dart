import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Deyimler extends StatefulWidget {
  @override
  _DeyimlerState createState() => _DeyimlerState();
}

class _DeyimlerState extends State<Deyimler> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('Deyimler');

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  //Ekranda Gösterme
  var GelenDeyimBasligi = "";
  var GelenDeyimIcerigi = "";

  YaziEkle() {
    FirebaseFirestore.instance
        .collection("Deyimler")
        .doc(t1.text)
        .set({'baslik': t1.text, 'icerik': t2.text});
  }

  YaziGuncelle() {
    FirebaseFirestore.instance
        .collection("Deyimler")
        .doc(t1.text)
        .update({'baslik': t1.text, 'icerik': t2.text});
  }

  YaziSil() {
    FirebaseFirestore.instance.collection("Deyimler").doc(t1.text).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veritabanı ile deyimleri gösterme'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: t1,
                    decoration: InputDecoration(labelText: 'Kaydedilecek Deyimi Giriniz: '),
                ),
                TextField(
                  controller: t2,
                  decoration: InputDecoration(labelText: 'Deyimin Anlamını Giriniz: '),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      child: Text("Ekle"),
                      onPressed: YaziEkle,
                      color: Colors.blue,
                    ),
                    MaterialButton(
                      child: Text("Güncelle"),
                      onPressed: YaziGuncelle,
                      color: Colors.green,
                    ),
                    MaterialButton(
                      child: Text("Sil"),
                      onPressed: YaziSil,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Column(
                  children: [
                    StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('Deyimler')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
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
                              margin: const EdgeInsets.all(10.0),
                              color: Colors.greenAccent,
                              child: ListTile(
                                title: Text(
                                  querySnapshot.docs[index]['baslik'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
