import 'package:get/get.dart';

class FavoriteController extends GetxController {
  final favoriteItems = <Map<String, dynamic>>[].obs;

  void removeItem(int index){
    favoriteItems.removeAt(index);
  }

  void addToFavorite(String selectedLokerImage, String selectedLokerAddress) {
   favoriteItems.add({'image': selectedLokerImage, 'alamat': selectedLokerAddress});
  }

  bool isFavorited(String selectedLokerImage, String alamat) {
    return favoriteItems.any((item) => item['image'] == selectedLokerImage && item['alamat'] == alamat);
  }
}