import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_management/constants/constants.dart';

class AddWaterBudgetScreen extends StatefulWidget {
  const AddWaterBudgetScreen({super.key});

  @override
  State<AddWaterBudgetScreen> createState() => _AddWaterBudgetScreenState();
}

class _AddWaterBudgetScreenState extends State<AddWaterBudgetScreen> {
  final amountController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    amountController.dispose();
  }

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
                  height: 30,
                ),
                Center(
                  child: Image(
                    image: AssetImage('assets/images/water_clipart.jpg'),
                    height: 130,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Center(
                    child: Text(
                      'Let\'s add a water budget for the day!',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 60),
                      height: 120,
                      width: 150,
                      child: TextField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 0.1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 0.9,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 30),
                        ),
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                        ),
                        maxLength: 5,
                      ),
                    ),
                    Text(
                      'ML',
                      style: GoogleFonts.roboto(
                        color: Colors.blue,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              '${amountController.text} ml added successfully as your today\'s water budget!'),
                        ),
                      );
                    },
                    child: Container(
                        width: double.infinity,
                        height: 55,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Submit',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
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
