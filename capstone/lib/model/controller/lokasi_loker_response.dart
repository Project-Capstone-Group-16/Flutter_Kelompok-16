// To parse this JSON data, do
//
//     final lokasiLokerResponse = lokasiLokerResponseFromJson(jsonString);

import 'dart:convert';

LokasiLokerResponse lokasiLokerResponseFromJson(String str) =>
    LokasiLokerResponse.fromJson(json.decode(str));

String lokasiLokerResponseToJson(LokasiLokerResponse data) =>
    json.encode(data.toJson());

class LokasiLokerResponse {
  List<Lokasi> lokasi;

  LokasiLokerResponse({
    required this.lokasi,
  });

  factory LokasiLokerResponse.fromJson(Map<String, dynamic> json) =>
      LokasiLokerResponse(
        lokasi:
            List<Lokasi>.from(json["Lokasi"].map((x) => Lokasi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Lokasi": List<dynamic>.from(lokasi.map((x) => x.toJson())),
      };
}

class Lokasi {
  int id;
  String lokasiLoker;
  String description;
  String alamat;
  String image;

  Lokasi({
    required this.id,
    required this.lokasiLoker,
    required this.description,
    required this.alamat,
    required this.image,
  });

  factory Lokasi.fromJson(Map<String, dynamic> json) => Lokasi(
        id: json["id"],
        lokasiLoker: json["lokasiLoker"],
        description: json["description"],
        alamat: json["alamat"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lokasiLoker": lokasiLoker,
        "description": description,
        "alamat": alamat,
        "image": image,
      };
}
