import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_management/constants/constants.dart';
import 'package:water_management/screens/home_screen/features/house_hold/add_water_activity.dart';
import 'package:water_management/screens/home_screen/features/house_hold/water_budget/add_water_budget.dart';

class DailyWaterGoalScreen extends StatelessWidget {
  const DailyWaterGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: myAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          moveScreen(context, false, AddWaterActivity());
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Your Water Activities",
                    style: GoogleFonts.poppins(
                        color: Colors.purple,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 1,
                        ),
                        Container(
                          color: Colors.lightBlueAccent[100],
                          child: ListTile(
                            leading: Icon(
                              Icons.water_drop,
                              color: Colors.deepPurple,
                              size: 30,
                            ),
                            title: Text(
                              'Watered plants',
                              style: GoogleFonts.poppins(
                                color: Colors.deepPurple[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '7:00 AM',
                                  style: GoogleFonts.poppins(
                                    color: Colors.deepPurple[300],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '300 ML',
                                      style: GoogleFonts.poppins(
                                        color: Colors.deepPurple[300],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 1,
                        ),
                        Container(
                          color: Colors.lightBlueAccent[100],
                          child: ListTile(
                            leading: Icon(
                              Icons.water_drop,
                              color: Colors.deepPurple,
                              size: 30,
                            ),
                            title: Text(
                              'Washed utensils',
                              style: GoogleFonts.poppins(
                                color: Colors.deepPurple[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '6:00 AM',
                                  style: GoogleFonts.poppins(
                                    color: Colors.deepPurple[300],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '9300 ML',
                                      style: GoogleFonts.poppins(
                                        color: Colors.deepPurple[300],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 1,
                        ),
                        Container(
                          color: Colors.lightBlueAccent[100],
                          child: ListTile(
                            leading: Icon(
                              Icons.water_drop,
                              color: Colors.deepPurple,
                              size: 30,
                            ),
                            title: Text(
                              'Washed Car',
                              style: GoogleFonts.poppins(
                                color: Colors.deepPurple[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '5:30 AM',
                                  style: GoogleFonts.poppins(
                                    color: Colors.deepPurple[300],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '5300 ML',
                                      style: GoogleFonts.poppins(
                                        color: Colors.deepPurple[300],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      moveScreen(context, false, AddWaterBudgetScreen());
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple,
                            Colors.blue,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Let\'s set up today\'s water budget!',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
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
