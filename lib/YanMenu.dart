import 'package:flutter/material.dart';

class YanMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 22.0), //üstten boşluk veriyoruz ki saat bölümünü kapatmasın.
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              //üst bölümün kapsayıcısı
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 80,
                    color: Colors.red,
                    child: Image(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNJspdkR3fDHyk_4tGejMcO_5gJZpn-ohkgfNaq_NULzCrjjo897VGXwFcXhKCDjoAaSA&usqp=CAU',
                      ), //internet linki ile resim çekme
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5), //yazılar tam yapışıyordu. İçeriden boşluk verdik.
                    child: Text(
                      'Benden çadırımı isteyin vereyim, atımı isteyin vereyim, eşimi isteyin vereyim, fakat vatanımdan hiç kimse bir karış toprak istemesin vermem, veremem.',
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
                      'METEHAN',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [

                  ListTile(
                    leading: Icon(Icons.wysiwyg),
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
                    leading: Icon(Icons.wysiwyg),
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
