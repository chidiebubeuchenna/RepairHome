import 'package:flutter/material.dart';
import 'package:repair_home_twentyfour/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  decideNavigation(){
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>
        const LoginScreen()),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    decideNavigation();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigo,
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/logo.png", width: 150,),
                  Text("REPAIR HOME", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                  ),
                  )

                ],
              ),
            ),
          ),
        ),);
  }
}
