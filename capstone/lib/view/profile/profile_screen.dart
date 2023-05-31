import 'package:capstone/components/color_path.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPath.background2,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(-1, -1),
              child: Container(
                width: 448,
                height: 120,
                decoration: const BoxDecoration(
                  color: ColorPath.AppbarProfile,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.89),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.9, -0.92),
                    child: Text(
                      'Profil',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: ColorPath.background2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.6, -0.94),
                    child: Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/73/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.9, -0.93),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.logout,
                          color: ColorPath.background2,
                          size: 24,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
