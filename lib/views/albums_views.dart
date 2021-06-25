import 'package:buyukturktarihi_app/models/albums_models.dart';
import 'package:buyukturktarihi_app/services/albums_services.dart';
import 'package:flutter/material.dart';

class Album_views extends StatefulWidget {
  @override
  _Album_viewsState createState() => _Album_viewsState();
}

class _Album_viewsState extends State<Album_views> {
  Future<Album> album;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    album = getAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Uygulaması'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: album,
        builder: (context, data){
          if(data.hasData){
            return Text(data.data.title);
          }else if(data.hasError)
            {
              return Text(data.error);
            }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
