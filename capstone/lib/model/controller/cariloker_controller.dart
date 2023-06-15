import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CariLokerController extends GetxController{
  RxList <String> locationList=<String>[].obs;
  RxMap<String,String> locationImages=<String,String>{}.obs;

  Future <void> fetchData()async{
    try{
      final response=await http.get(Uri.parse(
        'https://my-json-server.typicode.com/alfianadis/mockapi/db'
      ));
      if(response.statusCode==200){
        final data=json.decode(response.body);
        final List<Lokasi>locations=
        List<Lokasi>.from(data['Lokasi'].map((x)=>Lokasi.fromJson(x)));
         locationList.assignAll(locations.map((x) => x.lokasiLoker));
        locations.forEach((x) => locationImages[x.lokasiLoker] = x.image);
      } else{
        throw Exception('Failed to load data');
      }
    } catch(e){
      throw Exception('Failed to connect to the server');
    }
  }
}

class Lokasi {
  final String lokasiLoker;
  final String image;

  Lokasi ({required this.lokasiLoker, required this.image});

  factory Lokasi.fromJson (Map<String,dynamic>json){
    return Lokasi(
      lokasiLoker: json['lokasiLoker'],
      image: json['image'],
    );
  }
}