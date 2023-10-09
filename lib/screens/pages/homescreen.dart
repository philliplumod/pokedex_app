import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/screens/widgets/home_appbar.dart';

import '../../const/const_app.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double statusWidth = MediaQuery.of(context).padding.top;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -(240 / 3),
              left: screenWidth - (240 / 1.85),
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  ConstApp.blackPokeball,
                  height: 210,
                  width: 210,
                ),
              ),
            ),
            const HomeAppbar(),
            Container(),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text(
                        'Pokemon',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
