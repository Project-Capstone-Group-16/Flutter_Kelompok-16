import 'package:get/get.dart';

class KapasitasLoker{
  final String dropdownValue;

  KapasitasLoker({
    required this.dropdownValue,
  });

  KapasitasLoker copyWith({String? dropdownValue}){
    return KapasitasLoker(dropdownValue: dropdownValue?? this.dropdownValue);
  }
}

class SelectedLokerKapasitas extends GetxController{
  RxString selectedLokerKapasitas=''.obs;

  void addSelectedLokerKapasitas(String dropdownValue){
    selectedLokerKapasitas.value=dropdownValue;
  }
}