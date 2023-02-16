import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_management/constants/constants.dart';
import 'package:water_management/screens/home_screen/features/activiy_added_screen.dart';
import 'package:water_management/screens/home_screen/features/goal_done_screen.dart';
import 'package:water_management/widgets/text_field.dart';
import 'package:water_management/widgets/text_field_2.dart';

class AddWaterActivity extends StatefulWidget {
  const AddWaterActivity({super.key});

  @override
  State<AddWaterActivity> createState() => _AddWaterActivityState();
}

class _AddWaterActivityState extends State<AddWaterActivity> {
  final _activityController = TextEditingController();
  final _amountController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _activityController.dispose();
    _amountController.dispose();
    _timeController.dispose();
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
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Let\'s add a water activity',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 26,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyNewTextField(
                    hintText: 'Enter Activity',
                    isObscure: false,
                    controller: _activityController),
                MyNewTextField(
                    hintText: 'Enter Water Amount Used',
                    isObscure: false,
                    controller: _amountController),
                MyNewTextField(
                    hintText: 'Enter time',
                    isObscure: false,
                    controller: _timeController),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'TODAY\'S REMAINING\nWATER AMOUNT:- 2500 ML',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage('assets/images/water_droplet_2.png'),
                  fit: BoxFit.cover,
                  height: 130,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        moveScreen(context, false, ActivityAddedScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: double.infinity,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          'Let\'s do this!',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
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
