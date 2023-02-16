import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_management/constants/constants.dart';
import 'package:water_management/screens/home_screen/features/goal_done_screen.dart';
import 'package:water_management/screens/home_screen/features/house_hold/daily_water_goal.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
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
                  height: 30,
                ),
                Center(
                  child: Text("Let\'s set up a goal!",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Choose the number of glasses you wish\n to drink in the amount of 1 day.",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        elevation: 2.0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.deepPurple,
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Icon(
                                Icons.water_drop_outlined,
                                color: Colors.lightBlue[100],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                '5 glasses',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Card(
                        elevation: 2.0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.deepPurple,
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Icon(
                                Icons.water_drop_outlined,
                                color: Colors.lightBlue[100],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                '20 glasses',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        elevation: 2.0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.deepPurple,
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Icon(
                                Icons.water_drop_outlined,
                                color: Colors.lightBlue[100],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                '10 glasses',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Card(
                        elevation: 2.0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.deepPurple,
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Icon(
                                Icons.water_drop_outlined,
                                color: Colors.lightBlue[100],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                '15 glasses',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      moveScreen(context, false, GoalDoneScreen());
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [
                            Colors.lightBlue,
                            Colors.blue,
                          ],
                        ),
                      ),
                      child: Text("Let's do this 🔥",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    moveScreen(context, false, DailyWaterGoalScreen());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 12),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      margin: const EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue,
                            Colors.pinkAccent,
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                        ),
                        border:
                            Border.all(color: Colors.deepPurple, width: 0.2),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image:
                                AssetImage('assets/images/water_droplet_2.png'),
                          ),
                          Text(
                            'Your Household\nwater management?',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
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
