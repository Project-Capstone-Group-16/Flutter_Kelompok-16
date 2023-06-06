import 'package:get/get.dart';

class PicItem{
  final String image;

  PicItem({
    required this.image
  });

  PicItem copyWith({String? image}){
    return PicItem(image: image?? this.image);
  }
}

class CategoryController extends GetxController{
  RxString selectedCategoryImage=''.obs;

  void addCategoryPic(String image){
    selectedCategoryImage.value=image;
  }
}