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

class CheckoutController extends GetxController{
  final picItem=<PicItem>[].obs;

  void categoryPic(String image){
    picItem.add(PicItem(image: image));
  }
}