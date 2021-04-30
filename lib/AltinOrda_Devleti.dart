import 'package:flutter/material.dart';
class AltinOrda_Devleti extends StatefulWidget {
  @override
  _AltinOrda_DevletiState createState() => _AltinOrda_DevletiState();
}

class _AltinOrda_DevletiState extends State<AltinOrda_Devleti> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Altın Orda Devleti'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.network(
                  'https://i.milliyet.com.tr/MolatikGaleri/2020/01/21/fft373_mf33063868.Jpeg',
                ),
              ),
              OutlinedButton(
                child: Text('Göster / Gizle'),
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              ),
              Visibility(
                visible: isVisible,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  //  height: 600, -->Yükseklik vermedik ki yazıya göre otomatik olarak dolsun.
                  child: Text(
                    'Altın Orda, Altın Ordu Devleti (Tatarca: Алтын УрдаAltın Urda, Moğolca: Алтан Орд Altan Ord), bir Türk-Moğol hanlığıdır. Cengiz Han ölmeden önce topraklarını oğulları arasında paylaştırmıştı. Seyhun Irmağı ile Balkaş Gölünün batısındaki yerleri büyük oğlu Cuci Hana vermişti. Cuci Hanın küçük oğlu Batu Han, batıya doğru giriştiği seferlerle bu toprakları genişletti. Cucinin toprakları sonradan Batu Han ile ağabeyi Orda Han arasında paylaşıldı. Balkaş ile Aral gölleri arasındaki ve Seyhun Irmağının güneyindeki yerler Ordaya verildi. Harezm ve yeni alınan topraklar Batuun yönetimine bırakıldı. Ordanın yönetimindeki doğu bölgesine Ak Orda, Batuun yönetimindeki batı bölgesine de Gök Orda adı verildi. Gök Orda sonradan Altın Orda olarak adlandırıldı. 1242de Altın Orda Devletini kuran Batu Han, İdil Nehrinin aşağı havzasındaki Saray kentini kendine başkent edindi ve topraklarını genişletti. 1256’da Batu Han öldüğünde devletin sınırları Kıpçak Bozkırını (Deşt-i Kıpçak), İdilin aşağı ve orta havzasını, Seyhun ve İdil ırmakları arasındaki Aral Gölü yöresini, Kafkasların Azerbaycana kadar olan kesimini kapsıyordu. Altın Orda Devleti, Lehistan (Polonya) ve Litvanyayı vergiye bağlamıştı.Batu Hanın yerine Berke Han geçti. Berke Han, İslam dinini benimsedi ve Moğolların bir başka kolu olan İlhanlılarla savaştı. Bulgaristanda Bizans ordusunu yendi. 1260ta, ortaçağın en büyük kentlerinden biri sayılan Saray Berke kentini kurdu. Berke Hanın ölümünden sonra Mengü Timur Han, Özbek Han ve Canibeg Han Altın Orda Devletinin gücünü korudular. Canibeg Hanın ölümünden sonra taht kavgaları başladı. Toktamış Han 1380de Timurun desteğiyle tahta çıkarak bu çatışmalara son verdi. Daha sonra Timur’un Altın Orda topraklarına sefer düzenlemesi ve taht kavgalarının yeniden başlaması Altın Orda Devletini güçsüz düşürdü. Bu kavgalarla parçalanan Altın Orda Devleti topraklarında Kazan Hanlığı, Kırım Hanlığı, Astrahan Hanlığı, Nogay Hanlığı, Sibir Hanlığı kuruldu ve daha sonra Rusya Çarlığı olacak Moskova Knezliği bağımsız kaldı.[2] Moskova Knezliği dışında kalan toprakları Kırım Hanlığı ele geçirdi ve 1502de Altın Orda Devleti tarihten silindi.Altın Orda Devletide yönetsel konular soyluların oluşturduğu Kurultayda görüşülür ve karara bağlanırdı. Topraklar ve otlaklar Moğol soylularının elindeydi. Halk bu toprakları işler, ürünlerin belirli bir bölümünü bağlı oldukları beye verirdi. Göçebe bir toplumdan gelen Altın Orda hükümdarları, göçebeleri yerleşik düzene geçirmeye çalıştılar. Aşağı İdilde 20den çok kent kurdular. Bu kentlerin en büyüğü olan Saray Berke’nin nüfusunun 100 binden daha fazla olduğu sanılır.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
