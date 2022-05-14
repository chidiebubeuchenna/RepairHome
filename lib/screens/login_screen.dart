import 'package:flutter/material.dart';
import 'package:repair_home_twentyfour/screens/fix_page.dart';
import 'package:repair_home_twentyfour/screens/home_page.dart';
import 'package:repair_home_twentyfour/screens/sign_up.dart';
import 'package:repair_home_twentyfour/widgets/social_media.dart';
import 'package:repair_home_twentyfour/widgets/textfield.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 40,
              right: 40,
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset("assets/logoindigo.png", width: 150,),
                    Text("REPAIR HOME", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      fontSize: 24,
                    ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      children: [
                        Text("Login to your account", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AppTextField(
                        title: 'Email',),

                    SizedBox(
                      height: 15,
                    ),

                    AppTextField(
                      title: 'Password',),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey.shade900,
                            offset: Offset(3, 3),
                          )
                        ],
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: Text("Sign in"),

                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Text("- Or sign in with -", style: TextStyle(
                      color: Colors.black54,
                    ),),

                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: SocialMedia(
                            picture: Image.asset("assets/twt.png"),
                          ),
                        ),
                        Container(
                          child: SocialMedia(
                            picture: Image.asset("assets/fb.png"),
                          ),
                        ),
                        Container(
                          child: SocialMedia(
                            picture: Image.asset("assets/google.png"),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("- Don't have an account?",
                        style: TextStyle(color: Colors.black54),),
                        TextButton(onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>SignUp()));
                        },
                          child: Text("Sign Up"),)
                      ],

                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Powered by Group 24",
                        style: TextStyle(
                          color: Colors.black12,
                        ),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
