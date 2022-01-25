import 'package:flutter/material.dart';

class MyForgotPasswordEmail extends StatefulWidget {
  const MyForgotPasswordEmail({Key? key}) : super(key: key);

  @override
  _MyForgotPasswordEmailState createState() => _MyForgotPasswordEmailState();
}

class _MyForgotPasswordEmailState extends State<MyForgotPasswordEmail> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Please Enter your Email to recieve \n a  link to create a new password \n via email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: 48,
              width: 300,
              child: TextFormField(
                enableSuggestions: true,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 14),
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(300, 50),
                primary: Colors.white,
                elevation: 0,
                side: BorderSide(
                  width: 1,
                  color: Colors.red,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
