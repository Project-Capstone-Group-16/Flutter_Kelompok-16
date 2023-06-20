import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:capstone/components/color_path.dart';

import 'package:capstone/model/controller/favorite_controller.dart';

class FavoriteScreen extends StatefulWidget {
  final FavoriteController favoriteController;

  const FavoriteScreen({Key? key, required this.favoriteController}) : super(key: key);


  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {

    final favoriteController= Get.find<FavoriteController>();
    final favoriteItems=favoriteController.favoriteItems;

    return Scaffold(

      backgroundColor: ColorPath.background2,

      body: GetBuilder<FavoriteController>(
        builder: (favoriteController){
          final favoriteItems=favoriteController.favoriteItems;
          return favoriteItems.isNotEmpty?
          SafeArea(
          top: true,
          child: Stack(
            children: [
              const Align(
                alignment: AlignmentDirectional(0, -0.96),
                child: Text(
                  'Favorit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorPath.background,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, -0.99),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                  ),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ): const Center(
          child: Text('No items in favorite'),
        );
        }
      )
    );
  }
}