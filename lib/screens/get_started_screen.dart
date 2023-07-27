import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_nav.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // cria um gradient na tela inicial
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF131B63),
                Color(0xFF481162),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('imagens/start_logo.png'),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(
                'Converta seu dinheiro em\ncriptomoedas, de forma simples!',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 12,),
              child: Text(
                'Conecte-se com a conta do seu banco para\nacessar seu saldo em cripto e converter em saldo na sua conta do seu banco',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNav()),
                );
              },
              child: Container(
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 230, 174, 174),
                        Color(0xFFA03E82),
                      ]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: const BoxDecoration(
                        color: Color(0xFF8462E1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Começar',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
