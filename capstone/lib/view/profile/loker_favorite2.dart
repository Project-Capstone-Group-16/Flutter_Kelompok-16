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

    return Scaffold(
      appBar: AppBar(
        title: const Text('See Your Favorite Foods'),
        backgroundColor: Colors.white,
      ),

      body: GetBuilder<FavoriteController>(
        builder: (favoriteController){
          final favoriteItems=favoriteController.favoriteItems;
          return favoriteItems.isNotEmpty?
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: GridView.builder(
          
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
            
                  //rasio tinggi/lebar setiap item
                  childAspectRatio: 2/3,
                  ),
                itemCount: favoriteItems.length,
                itemBuilder: (BuildContext context, int index){
                  final loker= favoriteItems[index];
                  return Card(
                    elevation: 10,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    
                    child: Stack(
                      children:[
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child:Image.network(loker['selectedLokerImage'], fit: BoxFit.cover,)),
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Text(
                              loker['selectedLokerAddress'], 
                              style: const TextStyle(
                                fontSize: 16),
                                ),
                              ],
                            ),
                           ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                favoriteItems.removeAt(index);
                              });
                            }, 
                            icon: const Icon(Icons.delete_rounded)
                            ),
                        )
                      ],
                      )
                      ]
                    ),
                  );
                }
                ),
            ),
          ): 
            const Center(
              child: Text('No items in favorite'),
            );
        }
        ),
    );
  }
}