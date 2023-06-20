import 'package:get/get.dart';

class FavoriteController extends GetxController {
  final favoriteItems = <Map<String, dynamic>>[].obs;

  void removeItem(int index){
    favoriteItems.removeAt(index);
  }

  void addToFavorite(String selectedLokerImage, String selectedLokerAddress) {
   favoriteItems.add({
     'selectedLokerImage': selectedLokerImage,
     'selectedLokerAddress': selectedLokerAddress,
   });
  }

  bool isFavorited(String selectedLokerImage, String selectedLokerAddress) {
    return favoriteItems.any((item) =>
      item['selectedLokerImage'] == selectedLokerImage &&
      item['selectedLokerAddress'] == selectedLokerAddress
    );
  }
}