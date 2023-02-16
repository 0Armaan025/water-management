import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_management/constants/constants.dart';
import 'package:water_management/screens/auth/signup_screen.dart';
import 'package:water_management/widgets/text_field.dart';

import '../home_screen/features/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 10),
                        child: Image(
                          image: AssetImage('assets/images/water_droplet.png'),
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Let\'s Login',
                            style: GoogleFonts.poppins(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                          Text(
                            'We are happy to see you back!',
                            style: GoogleFonts.roboto(
                              color: Colors.purple,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    color: Colors.grey[100],
                    margin: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: 500,
                    child: Card(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          MyTextField(
                            hintText: 'Enter your name',
                            isObscure: false,
                            controller: _nameController,
                          ),
                          MyTextField(
                            hintText: 'Enter your email address',
                            isObscure: false,
                            controller: _emailController,
                          ),
                          MyTextField(
                            hintText: 'Enter your password',
                            isObscure: true,
                            controller: _passwordController,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                moveScreen(context, true, SignUpScreen());
                              },
                              child: Text(
                                'New? Sign up here...',
                                style: GoogleFonts.poppins(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
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
                                moveScreen(context, true, HomeScreen());
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                width: double.infinity,
                                height: 50,
                                padding: const EdgeInsets.all(12),
                                alignment: Alignment.center,
                                child: Text(
                                  'Start the Journey!',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.deepPurple,
                                      Colors.blue,
                                      Colors.deepPurple,
                                    ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
