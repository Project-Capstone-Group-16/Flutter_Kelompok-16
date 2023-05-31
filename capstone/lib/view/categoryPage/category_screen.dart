import 'package:flutter/material.dart';

import 'package:capstone/components/color_path.dart';
import 'package:capstone/components/all_button.dart';

class CategoryBarangScreen extends StatefulWidget {
  const CategoryBarangScreen({super.key});

  @override
  State<CategoryBarangScreen> createState() => _CategoryBarangScreenState();
}

class _CategoryBarangScreenState extends State<CategoryBarangScreen> {

  bool isContainer1Active=false;
  bool isContainer2Active=false;
  bool isContainer3Active=false;
  bool isContainer4Active=false;
  String selectedImage='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Positioned(
                  top: 35,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                const SizedBox(width: 60),

                const Text(
                  'Kategori Barang',
                  style: TextStyle(
                    fontSize: 23,
                    color: ColorPath.textcolor1,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),

            const SizedBox(height: 30,),

            Container(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 650,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 0.2
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),  
                          blurRadius: 2,        
                          spreadRadius: 2,      
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isContainer1Active=!isContainer1Active;
                                  isContainer2Active=false;
                                  isContainer3Active=false;
                                  isContainer4Active=false;
                                  if (isContainer1Active){
                                    selectedImage='assets/images/landingpage1.png';
                                  }
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: isContainer1Active ? const Color.fromARGB(255, 53, 59, 222) : const Color.fromARGB(255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )
                                ),
                                child: Image.asset('assets/images/tas.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isContainer2Active=!isContainer2Active;
                                  isContainer1Active=false;
                                  isContainer3Active=false;
                                  isContainer4Active=false;
                                  if (isContainer2Active){
                                    selectedImage='assets/images/landingpage2.png';
                                  }
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: isContainer2Active ? const Color.fromARGB(255, 53, 59, 222) : const Color.fromARGB(255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )
                                ),
                                child: Image.asset('assets/images/sepatu.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isContainer3Active=!isContainer3Active;
                                  isContainer1Active=false;
                                  isContainer2Active=false;
                                  isContainer4Active=false;
                                  if (isContainer3Active){
                                    selectedImage='assets/images/landingpage3.png';
                                  }
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: isContainer3Active ? const Color.fromARGB(255, 53, 59, 222) : const Color.fromARGB(255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )
                                ),
                                child: Image.asset('assets/images/baju.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isContainer4Active=!isContainer4Active;
                                  isContainer1Active=false;
                                  isContainer2Active=false;
                                  isContainer3Active=false;
                                  if (isContainer4Active){
                                    selectedImage='assets/images/landingpage1.png';
                                  }
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: isContainer4Active ? const Color.fromARGB(255, 53, 59, 222) : const Color.fromARGB(255, 216, 216, 216),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )
                                ),
                                child: Image.asset('assets/images/box.png'),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 40,),

                        Container(
                          width: 278,
                          height: 410,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 238, 249, 250),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            ),
                            child: selectedImage.isNotEmpty?Image.asset(selectedImage):null,
                          ),

                          const SizedBox(height: 50),

                          AllButton(
                            onTap: (){}, 
                            text: 'Lanjut', 
                            backgroundColor: ColorPath.background, 
                            textColor: ColorPath.white,
                            ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
        ),
    );
  }
}