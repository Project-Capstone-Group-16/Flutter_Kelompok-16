import 'package:http/http.dart' as http;
import 'dart:convert';

class LockerService {
  static const String apiUrl = 'http://143.198.92.250:8080/lockertypes';

  static Future<List<LockerType>> getLockerTypes() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final lockerTypes = List<LockerType>.from(
            jsonData['data'].map((locker) => LockerType.fromJson(locker)));
        return lockerTypes;
      } else {
        throw Exception('Failed to load locker types');
      }
    } catch (e) {
      throw Exception('Failed to connect to the API');
    }
  }
}

class LockerType {
  final int id;
  final String name;
  final double price;

  LockerType({required this.id, required this.name, required this.price});

  factory LockerType.fromJson(Map<String, dynamic> json) {
    return LockerType(
      id: json['ID'],
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }
}
