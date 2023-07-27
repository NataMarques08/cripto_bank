import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final _bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  int indexScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: _bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: const Color(0XFF261863),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          padding: const EdgeInsets.all(10),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 0;
                  });
                },
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage('imagens/home.png'),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Home',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Color(0xFFD975BB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 1;
                  });
                },
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('imagens/wallet.png'),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Wallet',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 38,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 2;
                  });
                },
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('imagens/market.png'),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Market',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 3;
                  });
                },
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('imagens/setting.png'),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Setting',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: const Color(0xFF55389B),
            borderRadius: BorderRadius.circular(38),
          ),
          child: const Icon(
            Icons.swap_horiz_outlined,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
