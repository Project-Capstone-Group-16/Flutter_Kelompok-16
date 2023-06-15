import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:capstone/model/controller/lokasi_loker_response.dart';

class LokasiLokerProvider extends ChangeNotifier {
  String? selectedLokerImage;
  List<String> locationList = [];
  Map<String, String> locationImages = {};

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://my-json-server.typicode.com/alfianadis/mockapi/db'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<Lokasi> locations =
            List<Lokasi>.from(data['Lokasi'].map((x) => Lokasi.fromJson(x)));
        locationList =
            locations.map((location) => location.lokasiLoker).toList();
        locationImages = {
          for (var location in locations) location.lokasiLoker: location.image
        };
        selectedLokerImage =
            locationList.isNotEmpty ? locationImages[locationList.first] : '';
        notifyListeners();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }

  void selectLoker(String? newValue) {
    selectedLokerImage = locationImages[newValue!] ?? '';
    notifyListeners();
  }
}
