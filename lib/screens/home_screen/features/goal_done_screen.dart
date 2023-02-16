import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class GoalDoneScreen extends StatefulWidget {
  const GoalDoneScreen({super.key});

  @override
  State<GoalDoneScreen> createState() => _GoalDoneScreenState();
}

class _GoalDoneScreenState extends State<GoalDoneScreen> {
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
                Center(
                  child: Text(
                    'Alarms have been sent according\n to the number of glasses set as the goal!',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
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
