import 'package:flutter/material.dart';
import 'package:youtube/Pages/signin.dart';

import 'animation.dart';

class SignOut extends StatefulWidget {
  const SignOut({Key? key}) : super(key: key);

  @override
  State<SignOut> createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String? email;
  String? password;
  String? confirmPassword;
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Container(
                height: myHeight * 0.07,
                width: myWidth,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignIn(),
                              ));
                        },
                        child: const Icon(Icons.arrow_back_ios_new_rounded)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    AnimationWidget(
                      axis: Axis.vertical,
                      curve: Curves.easeOutExpo,
                      offset: 100.0,
                      duration: const Duration(milliseconds: 800),
                      child: const Text(
                        "Swaaaa",
                        style: TextStyle(
                            fontFamily: "Ki",
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                    ),
                    AnimationWidget(
                      axis: Axis.vertical,
                      curve: Curves.easeOutExpo,
                      offset: 100.0,
                      duration: const Duration(milliseconds: 1000),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Create your account",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            decoration: const InputDecoration(
                                hintText: "Email",
                                suffixIcon: Icon(Icons.email),
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(height: 10.0),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            decoration: const InputDecoration(
                                hintText: "Password",
                                suffixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(height: 10.0),
                          TextFormField(
                            controller: confirmPasswordController,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            onChanged: (value) {
                              setState(() {
                                confirmPassword = value;
                              });
                            },
                            decoration: const InputDecoration(
                                hintText: "Confirm Password",
                                suffixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(height: 40.0),
                          Container(
                            height: myHeight * 0.08,
                            width: myWidth,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: const Center(
                              child: Text(
                                "Sign out",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        orSignIn("assets/image/google.png", 1200),
                        orSignIn("assets/image/facebook.png", 1400),
                        orSignIn("assets/image/twitter.png", 1600),
                        orSignIn("assets/image/instagram.png", 1800),
                      ],
                    ),
                    const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget orSignIn(String image, int duration) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return AnimationWidget(
      axis: Axis.vertical,
      curve: Curves.easeOutExpo,
      offset: 100.0,
      duration: Duration(milliseconds: duration),
      child: Container(
        height: myHeight * 0.08,
        width: myWidth * 0.16,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(5.0)),
        child: Center(
          child: Image.asset(image, height: 30.0),
        ),
      ),
    );
  }
}
