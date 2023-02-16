import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class ActivityAddedScreen extends StatefulWidget {
  const ActivityAddedScreen({super.key});

  @override
  State<ActivityAddedScreen> createState() => _ActivityAddedScreenState();
}

class _ActivityAddedScreenState extends State<ActivityAddedScreen> {
  String loadingText = "Loading";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: size.height * 0.9,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.deepPurple,
              //     Colors.blue,
              //   ],
              // ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 130,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    child: Icon(
                      Icons.done,
                      size: 60,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Done...',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 42,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Your water activity has been added successfully!',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
