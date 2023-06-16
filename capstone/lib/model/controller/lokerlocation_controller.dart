import 'package:get/get.dart';

class AlamatLoker{
  final String alamat;

  AlamatLoker({
    required this.alamat,
  });

  AlamatLoker copyWith({String? alamat}){
    return AlamatLoker(alamat: alamat?? this.alamat);
  }
}

class SelectedLokerAddress extends GetxController{
  RxString selectedLokerAddress=''.obs;

  void addSelectedLokerAddress(String alamat){
    selectedLokerAddress.value=alamat;
  }
}