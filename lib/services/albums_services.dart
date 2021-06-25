import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:buyukturktarihi_app/models/albums_models.dart';

Future<Album> getAlbum() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if(response.statusCode==200){
    return Album.fromJson(jsonDecode(response.body));

  }
  else{
    throw Exception('data error');
  }
}