import 'package:fixitnow/screens/home/home.dart';
import 'package:fixitnow/screens/login&signup/signup.dart';
import 'package:fixitnow/screens/widgets/navigation_bar.dart';
import 'package:fixitnow/screens/widgets/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Gets screen size

    Brightness brightness = Theme.of(context).brightness;
    String imagePath = brightness == Brightness.light ? 'asset/logo.light.png' : 'asset/logo.dark.png';

    return Scaffold(
      body: Container(
        child: SafeArea(
          //list view to form a list
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [

              // LOGO PART
              Container(
                height: size.height * 0.34,
                width: size.height * 0.3,
                child: Image.asset(imagePath),
              ),

              // INPUT FIELD FOR EMAIL
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey[600]!,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: TextStyles.primaryColor,
                        width: 2.0,
                      ),
                    ),
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.tertiary,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  ),
                ),
              ),

              // INPUT FIELD FOR PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey[600]!,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: TextStyles.primaryColor,
                        width: 2.0,
                      ),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.tertiary,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_off_outlined, color: TextStyles.primaryColor),
                      onPressed: () {
                        //
                      },
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?           ",
                  textAlign: TextAlign.center,
                  style: TextStyles.captions,
                ),
              ),

              SizedBox(height: size.height * 0.04),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    // Sign in button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainNavigationBar(),
                          ),
                        );
                      },
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          width: size.width,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: TextStyles.primaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: size.height * 0.04),

                    // OR CONTINUE WITH SECTION
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // THE LINE
                        Container(
                          height: 1.5,
                          width: size.width * 0.2,
                          color: TextStyles.primaryColor,
                        ),

                         Text(
                          "  Or continue with   ",
                          style: TextStyles.bodyMedium,
                        ),

                        // THE LINE
                        Container(
                          height: 1.5,
                          width: size.width * 0.2,
                          color: TextStyles.primaryColor,
                        ),
                      ],
                    ),

                    SizedBox(height: size.height * 0.01),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(
                            width: 35,
                            height: 40,
                            child: Image.asset('asset/fblogo.png'),
                          ),

                          const SizedBox(width: 15),

                          SizedBox(
                            width: 35,
                            height: 40,
                            child: Image.asset('asset/google.png'),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: size.height * 0.04),

                    // NOT A MEMBER? REGISTER NOW PART
                    Container(
                      child: RichText(
                        text: TextSpan(
                          text: "Not a member? ",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 14,
                          ),
                          children: [
                            // allows embedding a widget within the text
                            WidgetSpan(
                              alignment: PlaceholderAlignment.baseline,
                              baseline: TextBaseline.alphabetic,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignInPage()),
                                  );
                                },
                                child: const Text(
                                  "Register now",
                                  style: TextStyle(
                                    color: const Color(0xFFFF7F66),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
