import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CariLokerController extends GetxController {
  RxList<String> locationList = <String>[].obs;
  RxMap<String, String> locationImages = <String, String>{}.obs;
  RxMap<String, String> locationAddresses = <String, String>{}.obs;
  RxMap<String, String> locationDescription = <String, String>{}.obs;

  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('http://143.198.92.250:8080/warehouse'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<Lokasi> locations =
            List<Lokasi>.from(data['data'].map((x) => Lokasi.fromJson(x)));
        locationList.assignAll(locations.map((x) => x.city));
        locations.forEach((x) => locationImages[x.city] = x.image);
        locations.forEach((x) => locationAddresses[x.city] = x.address);
        locations.forEach((x) => locationDescription[x.city] = x.description);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }
}

class Lokasi {
  final String city;
  final String image;
  final String address;
  final String description;

  Lokasi(
      {required this.city,
      required this.image,
      required this.address,
      required this.description});

  factory Lokasi.fromJson(Map<String, dynamic> json) {
    return Lokasi(
      city: json['city'],
      image: json['image_url'],
      address: json['address'],
      description: json['description'],
    );
  }
}
