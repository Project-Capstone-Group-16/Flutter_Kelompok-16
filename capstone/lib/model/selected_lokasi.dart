import 'package:flutter/material.dart';

class SelectedLokasiModel extends ChangeNotifier {
  String? selectedLokasi;

  void setSelectedLokasi(String? lokasi) {
    selectedLokasi = lokasi;
    notifyListeners();
  }
}
