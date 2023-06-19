import 'package:get/get.dart';

class LockerType {
  final int id;
  final String name;
  final int price;

  LockerType({required this.id, required this.name, required this.price});

  factory LockerType.fromJson(Map<String, dynamic> json) {
    return LockerType(
      id: json['ID'],
      name: json['name'],
      price: json['price'],
    );
  }
}

class SelectedKategory extends GetxController {
  RxString selectedKategoriKapasitas = ''.obs;
  RxString selectedKategoriNama = ''.obs;
  RxString selectedKategoriHarga = ''.obs;

  void addSelectedLokerKategori(String kapasitas, String nama, String harga) {
    selectedKategoriKapasitas.value = kapasitas;
    selectedKategoriNama.value = nama;
    selectedKategoriHarga.value = harga;
  }
}
