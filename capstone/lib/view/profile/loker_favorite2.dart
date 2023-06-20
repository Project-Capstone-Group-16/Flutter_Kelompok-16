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
      backgroundColor: ColorPath.primary,

      body: GetBuilder<FavoriteController>(
        builder: (favoriteController){
          final favoriteItems=favoriteController.favoriteItems;
          return favoriteItems.isNotEmpty?
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )
                    ),
                    const SizedBox(width: 80),
                const Text(
                  'Favorite',
                  style: TextStyle(
                    fontSize: 23,
                    color: ColorPath.textcolor1,
                    fontWeight: FontWeight.w600,
                  ),
                )
                ],
                ),
                const SizedBox(height: 20),
          
                SingleChildScrollView(
                  child: ListView.builder(
                          
                    shrinkWrap: true,
                    itemExtent: 160,
                    itemCount: favoriteItems.length,
                    itemBuilder: (BuildContext context, int index){
                      final loker= favoriteItems[index];
                      return Container(
                        child: Stack(
                          children: [
                            Container(
                              width: 500,
                              height: 149,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black, width: 0.8),
                                  borderRadius: BorderRadius.circular(10
                                  )),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Container(
                                      width: 120,
                                      height: 130,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  loker['selectedLokerImage']),
                                              fit: BoxFit.fill)),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Container(
                                              width: 185,
                                              height: 80,
                                              child: Center(
                                                child: Text(
                                                  loker['selectedLokerAddress'],
                                                  style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left:150,top:15),
                                            child: IconButton(
                                              onPressed: (){
                                                 setState(() {
                                                  favoriteItems.removeAt(index);
                                                });
                                              }, 
                                              icon: const Icon(Icons.delete_rounded),
                                              ),
                                          )
                                        ],
                                      ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
                    }
                    ),
                ),
              ],
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