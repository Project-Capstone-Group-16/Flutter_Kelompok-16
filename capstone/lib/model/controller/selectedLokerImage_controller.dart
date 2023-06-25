import 'package:get/get.dart';

class Loker{
  final String image;
  final String alamat;
  final String description;

  Loker({
    required this.image,
    required this.alamat,
    required this.description,
  });

  Loker copyWith({String? image, String? alamat, String? description}){
    return Loker(image: image?? this.image, alamat: alamat?? this.alamat, description: description?? this.description);
  }
}

class SelectedLokerImage extends GetxController{
  RxString selectedLokerImage=''.obs;
  RxString selectedLokerAddress=''.obs;
  RxString selectedLokerDescription=''.obs;

  void addSelectedLokerImage(String image, String alamat, String description){
    selectedLokerImage.value=image;
    selectedLokerAddress.value=alamat;
    selectedLokerDescription.value=description;
  }
}