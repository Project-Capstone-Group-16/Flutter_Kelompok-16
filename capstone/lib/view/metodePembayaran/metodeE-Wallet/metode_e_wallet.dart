import 'package:capstone/screen.dart';
import 'package:flutter/material.dart';

import 'e_wallet_dana.dart';
import 'e_wallet_e_invent.dart';
import 'e_wallet_gopay.dart';
import 'e_wallet_ovo.dart';
import 'e_wallet_spay.dart';

class MetodeEWallet extends StatefulWidget {
  const MetodeEWallet({super.key});

  @override
  State<MetodeEWallet> createState() => _MetodeEWalletState();
}

class _MetodeEWalletState extends State<MetodeEWallet> {
  String selectedPaymentMethod = '';
  bool isEInventSelected = false;
  bool isGopaySelected = false;
  bool isDanaSelected = false;
  bool isOvoSelected = false;
  bool isSpaySelected = false;

  void selectPaymentMethod(String method) {
    setState(() {
      selectedPaymentMethod = method;
      isEInventSelected = method == 'E-Invent';
      isGopaySelected = method == 'Gopay';
      isDanaSelected = method == 'Dana';
      isOvoSelected = method == 'Ovo';
      isSpaySelected = method == 'Spay';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF9F7),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 36,
              color: Colors.transparent,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: const Color(0xFF1652F9),
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MetodePembayaranScreen(),
                        ),
                      );
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'Pembayaran',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1652F9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(width: 0.5, color: Colors.blueGrey),
              ),
              child: Column(
                children: [
                  ListTile(
                    focusColor: Colors.red,
                    splashColor: Colors.grey,
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundColor: const Color(0xFF1652F9),
                      child: Image.asset('assets/images/vectorFile.png'),
                    ),
                    title: const Text(
                      'Metode E-Wallet',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          selectPaymentMethod('E-Invent');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: isEInventSelected ? 2.0 : 0.0,
                                  color: isEInventSelected
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/E-Invent.png',
                                    scale: 18,
                                  ),
                                  const SizedBox(width: 35),
                                  const Text(
                                    'E - Invent',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectPaymentMethod('Gopay');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: isGopaySelected ? 2.0 : 0.0,
                                  color: isGopaySelected
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Image.asset(
                                'assets/images/Gopay.png',
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  selectPaymentMethod('Dana');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: isDanaSelected ? 2.0 : 0.0,
                                      color: isDanaSelected
                                          ? Colors.blue
                                          : Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/Dana.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectPaymentMethod('Ovo');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: isOvoSelected ? 2.0 : 0.0,
                                  color: isOvoSelected
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Image.asset(
                                'assets/images/Ovo.png',
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  selectPaymentMethod('Spay');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: isSpaySelected ? 2.0 : 0.0,
                                      color: isSpaySelected
                                          ? Colors.blue
                                          : Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/Spay.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      backgroundColor: const Color(0xFF1677FF),
                      foregroundColor: Colors.white,
                      elevation: 3,
                      fixedSize: const Size(170, 41),
                    ),
                    onPressed: () {
                      if (selectedPaymentMethod == 'E-Invent') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EInventScreen(),
                          ),
                        );
                      } else if (selectedPaymentMethod == 'Gopay') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GopayScreen(),
                          ),
                        );
                      } else if (selectedPaymentMethod == 'Dana') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DanaScreen(),
                          ),
                        );
                      } else if (selectedPaymentMethod == 'Ovo') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OvoScreen(),
                          ),
                        );
                      } else if (selectedPaymentMethod == 'Spay') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SPayScreen(),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Pilih',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
