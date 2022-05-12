import 'package:flutter/material.dart';
import 'package:repair_home_twentyfour/screens/login_screen.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key, required this.picture}) : super(key: key);

  final Image picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Colors.white,
      ),
      padding: EdgeInsets.all(8.0),
      height: 60,
      width: 80,
      child: picture,
    );
  }
}
