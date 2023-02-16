//moveScreen
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

moveScreen(BuildContext context, bool isPushReplacement, Widget toScreen) {
  if (isPushReplacement) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => toScreen));
  } else {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => toScreen));
  }
}

AppBar myAppBar() {
  return AppBar(
    title: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/water_droplet.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          'Let\'s be hydrated!',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ],
    ),
    centerTitle: true,
  );
}
