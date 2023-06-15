import 'package:get/get.dart';

class LokerPic{
  final String image;

  LokerPic({
    required this.image
  });

  LokerPic copyWith({String? image}){
    return LokerPic(image: image?? this.image);
  }
}

class SelectedLokerImage extends GetxController{
  RxString selectedLokerImage=''.obs;

  void addSelectedLokerImage(String image){
    selectedLokerImage.value=image;
  }
}