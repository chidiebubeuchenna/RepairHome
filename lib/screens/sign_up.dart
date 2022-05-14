import 'package:flutter/material.dart';
import 'package:repair_home_twentyfour/screens/home_page.dart';
import 'package:repair_home_twentyfour/widgets/social_media.dart';
import 'package:repair_home_twentyfour/widgets/textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 40,
            right: 40,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Column(
                children: [
                  Image(image: AssetImage("assets/logoindigo.png")),
                  Text(
                    "REPAIR HOME",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create new account",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                        title: "Email"),
                    SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                        title: "Password"),

                    SizedBox(
                      height: 20,
                    ),
                    AppTextField(
                        title: "Confirm password"),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade900,
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
                        child: Text("Sign Up"),

                    )
                    )],
                ),
              ),
              Container(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  ". Or sign up with -",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialMedia(
                      picture: Image.asset('assets/google.png')),

                  SocialMedia(
                      picture: Image.asset('assets/fb.png')),

                  SocialMedia(
                      picture: Image.asset('assets/twt.png')),

                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}


