import 'package:flutter/material.dart';
import 'package:mobistylez/helper/constant.dart';
import 'package:mobistylez/screens/clients_delivery.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  void splashScreen() async{
   await Future.delayed(const Duration(seconds: 5), () {});
    openScreen(context, const ClientDelivery());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:
          const Center(child: Image(image: AssetImage('assets/Group 30.png'))),
    );
  }
}
