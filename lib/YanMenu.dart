import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class YanMenu extends StatelessWidget {

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final CollectionReference collectionReference =
  FirebaseFirestore.instance.collection('YanMenuLiderSozu');


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 22.0), //üstten boşluk veriyoruz ki saat bölümünü kapatmasın.
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StreamBuilder(
                stream:
                FirebaseFirestore.instance.collection('YanMenuLiderSozu').snapshots(),
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
                    shrinkWrap: true, //sınırsız yükseklik verildi hatasının çözümü
                    itemCount: querySnapshot.docs.length,
                    itemBuilder: (context, index) {
                      final map = querySnapshot.docs[index].data();
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 80,
                              color: Colors.red,
                              child: Image(
                                  image:
                                  NetworkImage(querySnapshot.docs[index]['YanMenuResim'])),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 5), //yazılar tam yapışıyordu. İçeriden boşluk verdik.
                              child: Text(
                                  querySnapshot.docs[index]['YanMenuSoz'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              color: Colors.red,
                            ),
                            Container(
                              height: 15,
                              color: Colors.red,
                              child: Text(
                                querySnapshot.docs[index]['YanMenuKimeAit'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.article_rounded),
                    title: Text('Soru Çöz'),
                    onTap: () {
                      Navigator.pushNamed(context, '/Soru_Coz');
                    },
                  ), //bunun 3 özelliği var
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Divider(
                      height: 1.0,
                      thickness: 2.0,
                      color: Colors.red,
                    ),
                  ),


                  ListTile(
                    leading: Icon(Icons.title),
                    title: Text('Atasözlerimiz'),
                    onTap: () {
                      Navigator.pushNamed(context, '/DBTestPage');
                    },
                  ), //bunun 3 özelliği var
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Divider(
                      height: 1.0,
                      thickness: 2.0,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Deyimler'),
                    onTap: () {
                      Navigator.pushNamed(context, '/Deyimler');
                    },
                  ), //bunun 3 özelliği var
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Divider(
                      height: 1.0,
                      thickness: 2.0,
                      color: Colors.red,
                    ),
                  ),


                  ListTile(
                    leading: Icon(Icons.bar_chart),
                    title: Text('İstatistik'),
                    onTap: () {
                      Navigator.pushNamed(context, '/PieChartSample3');
                    },
                  ), //bunun 3 özelliği var
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Divider(
                      height: 1.0,
                      thickness: 2.0,
                      color: Colors.red,
                    ),
                  ),


                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Api'),
                    onTap: () {
                      Navigator.pushNamed(context, '/albums_views');
                    },
                  ), //bunun 3 özelliği var
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Divider(
                      height: 1.0,
                      thickness: 2.0,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text('Hakkında'),
                    onTap: () {
                      Navigator.pushNamed(context, '/Hakkinda');
                    },
                  ), //bunun 3 özelliği var
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Divider(
                      height: 1.0,
                      thickness: 2.0,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//yan menü için
//drawer demek sürüklenebilir demek.
