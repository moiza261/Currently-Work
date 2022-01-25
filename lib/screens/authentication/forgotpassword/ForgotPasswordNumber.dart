import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mobistylez/helper/constant.dart';
import 'package:mobistylez/screens/authentication/forgotpassword/NewPassword.dart';

class MyForgotPasswordNumber extends StatefulWidget {
  const MyForgotPasswordNumber({Key? key}) : super(key: key);

  @override
  _MyForgotPasswordNumberState createState() => _MyForgotPasswordNumberState();
}

class _MyForgotPasswordNumberState extends State<MyForgotPasswordNumber> {
  String code = "+92";
  final TextEditingController _phoneNumberController = TextEditingController();

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
                      'Please Enter your number to recieve \n a  OTP to create a new password \n via phone number',
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
              height: 50,
              width: 300,
              child: Row(
                children: [
                  Flexible(
                    child: CountryCodePicker(
                      initialSelection: code,
                      onChanged: (value) {
                        code = value.toString();
                      },
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 3, left: 15),
                        hintText: 'Enter Phone Number',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
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
                side: const BorderSide(
                  width: 1,
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                openScreen(context, const MyNewPasswordScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
