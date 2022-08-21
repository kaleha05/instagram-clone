import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  int splashTime = 3;

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashTime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context){
            return const HomePage();
          }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
            image: AssetImage('assets/images/logo.png'),
          width: 100,
            height: 100,
        ),
      ),
    );
  }
}
