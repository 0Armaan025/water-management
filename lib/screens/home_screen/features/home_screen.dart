import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_management/constants/constants.dart';
import 'package:water_management/screens/home_screen/features/goal_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image(
                        image: AssetImage('assets/images/water_droplet_2.png'),
                        fit: BoxFit.cover,
                        height: 110,
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 210,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          'Let\'s drink some water...',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.lightBlueAccent,
                            Colors.lightBlueAccent,
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                  ),
                  child: Text(
                    '150/150 \n glasses',
                    style: GoogleFonts.poppins(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image(
                    image: AssetImage('assets/images/glass_img.png'),
                    height: 50,
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    'Your recent hydrations',
                    style: GoogleFonts.lato(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    elevation: 2,
                    child: Container(
                      height: 200,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ListTile(
                              tileColor: Colors.white,
                              leading: Icon(
                                Icons.history,
                                color: Colors.deepPurple,
                                size: 32,
                              ),
                              title: Text(
                                '10:30',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.purple,
                                ),
                              ),
                              subtitle: Text(
                                '200 ml',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.purple,
                            ),
                            ListTile(
                              tileColor: Colors.white,
                              leading: Icon(
                                Icons.water,
                                color: Colors.deepPurple,
                                size: 32,
                              ),
                              title: Text(
                                '9:30',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.purple,
                                ),
                              ),
                              subtitle: Text(
                                '500 ml',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.purple,
                            ),
                            ListTile(
                              tileColor: Colors.white,
                              leading: Icon(
                                Icons.water,
                                color: Colors.deepPurple,
                                size: 32,
                              ),
                              title: Text(
                                '8:30',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.purple,
                                ),
                              ),
                              subtitle: Text(
                                '400 ml',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      moveScreen(context, false, GoalScreen());
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.deepPurple,
                          ],
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Set up a Goal',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
