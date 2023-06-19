import 'dart:convert';

KategoriLokerResponse kategoriLokerResponseFromJson(String str) =>
    KategoriLokerResponse.fromJson(json.decode(str));

class KategoriLokerResponse {
  List<Kategori> kategori;

  KategoriLokerResponse({required this.kategori});

  factory KategoriLokerResponse.fromJson(Map<String, dynamic> json) =>
      KategoriLokerResponse(
        kategori: List<Kategori>.from(
            json["Kategori"].map((x) => Kategori.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {"Kategori": List<dynamic>.from(kategori.map((x) => x.toJson()))};
}

class Kategori {
  int id;
  String kapasitas;
  String nama;
  String harga;

  Kategori(
      {required this.id,
      required this.kapasitas,
      required this.nama,
      required this.harga});

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        id: json["id"],
        kapasitas: json["kapasitas"],
        nama: json["nama"],
        harga: json["harga"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kapasitas": kapasitas,
        "nama": nama,
        "harga": harga,
      };
}
