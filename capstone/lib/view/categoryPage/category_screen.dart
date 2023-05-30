import 'package:flutter/material.dart';

import 'package:capstone/components/color_path.dart';

class CategoryBarangScreen extends StatefulWidget {
  const CategoryBarangScreen({super.key});

  @override
  State<CategoryBarangScreen> createState() => _CategoryBarangScreenState();
}

class _CategoryBarangScreenState extends State<CategoryBarangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        )
        ),
    );
  }
}