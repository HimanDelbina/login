import 'package:flutter/material.dart';
import 'package:youtube/Pages/animation.dart';
import 'package:youtube/Pages/signout.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                          "Login your account",
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
                    const SizedBox(height: 40.0),
                    Container(
                      height: myHeight * 0.08,
                      width: myWidth,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: const Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
              AnimationWidget(
                axis: Axis.vertical,
                curve: Curves.easeOutExpo,
                offset: 100.0,
                duration: const Duration(milliseconds: 2000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account : "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignOut(),
                            ));
                      },
                      child: const Text(
                        "Sign Out",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(),
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
