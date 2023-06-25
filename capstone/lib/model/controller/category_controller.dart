import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PicItem {
  final String image;

  PicItem({required this.image});

  PicItem copyWith({String? image}) {
    return PicItem(image: image ?? this.image);
  }
}

class CategoryController extends GetxController {
  RxString selectedCategoryImage = ''.obs;
  RxList<String> kategoriList = <String>[].obs;
  // RxMap<String, String> kategoriKapasitas = <String, String>{}.obs;
  RxMap<String, String> kategoriNama = <String, String>{}.obs;
  RxMap<String, String> kategoriHarga = <String, String>{}.obs;

  void addCategoryPic(String image) {
    selectedCategoryImage.value = image;
  }
}

class Kategori {
  int ID;
  String name;
  String price;

  Kategori({required this.ID, required this.name, required this.price});

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        ID: json["ID"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": ID,
        "nama": name,
        "price": price,
      };
}
