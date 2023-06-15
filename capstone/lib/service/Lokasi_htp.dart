import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/controller/lokasi_model.dart';

class LokasiLokerService {
  Future<List<LokasiLoker>> getLokasiLoker() async {
    final response = await http.get(Uri.parse(
        'https://my-json-server.typicode.com/alfianadis/mockapi/lokasiLoker'));
    if (response.statusCode == 200) {
      final jsonResult = json.decode(response.body);
      final data = jsonResult['lokasiLoker'];
      return List<LokasiLoker>.from(
          data.map((item) => LokasiLoker.fromJson(item)));
    } else {
      throw Exception('Failed to load lokasi loker');
    }
  }
}
