import 'package:flutter_test/flutter_test.dart';
import 'package:capstone/model/controller/category_controller.dart';
void main() {
  group('CategoryController', () {
    late CategoryController categoryController;

    setUp(() {
      categoryController = CategoryController();
    });

    tearDown(() {
      categoryController.dispose();
    });

    test('addCategoryPic should update selectedCategoryImage', () {
      const imagePath = 'assets/images/box.png';

      categoryController.addCategoryPic(imagePath);

      expect(categoryController.selectedCategoryImage.value, imagePath);
    });
  });
}