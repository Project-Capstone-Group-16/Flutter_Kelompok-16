import 'package:dio/dio.dart';
import 'package:capstone/model/controller/lokasi_loker_response.dart';

class LokasiLokerService {
  Future<LokasiLokerResponse> getLokasiLoker() async {
    try {
      final response = await Dio().get(
        'https://my-json-server.typicode.com/alfianadis/mockapi/db',
      );
      if (response.statusCode == 200) {
        return LokasiLokerResponse.fromJson(response.data);
      } else {
        throw Exception('Failed To load');
      }
    } catch (e) {
      throw Exception('Failed: $e');
    }
  }
}
