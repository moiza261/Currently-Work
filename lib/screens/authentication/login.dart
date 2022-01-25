import 'package:flutter/material.dart';
import 'package:mobistylez/helper/constant.dart';
import 'package:mobistylez/helper/myTextField.dart';
import 'package:mobistylez/screens/authentication/forgotpassword/ForgotPassword.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ishidepassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/Group 30.png'),
                height: 140,
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.15,
                height: MediaQuery.of(context).size.height,
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  // BoxShadow(
                  //     color: Colors.red,
                  //     blurRadius: 5.0,
                  //     blurStyle: BlurStyle.outer),
                ]),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'HELLO',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Please Login to your account',
                        style: TextStyle(
                            color: Colors.grey, fontFamily: "Poppins"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Driver Email Address",
                                labelStyle: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 16,
                                    fontFamily: "Poppins"),
                                hintText: "Enter Your Email",
                                suffixIcon: Icon(
                                  Icons.mail,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              obscureText: ishidepassword,
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: const TextStyle(
                                    color: Colors.purple,
                                    fontSize: 16,
                                    fontFamily: "Poppins"),
                                hintText: "Enter Your Password",
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      ishidepassword = !ishidepassword;
                                    });
                                  },
                                  icon: Icon(
                                    ishidepassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            openScreen(context, MyForgotPassword());
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.purple, fontFamily: "Poppins"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.30,
                        height: MediaQuery.of(context).size.height / 12.5,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.purple,
                            Colors.red,
                          ]),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "Poppins"),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Or Login using social media',
                        style: TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage('assets/Path 2477.png'),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Image(
                            image: AssetImage('assets/Path 2478.png'),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Image(
                            image: AssetImage('assets/Union 6.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
