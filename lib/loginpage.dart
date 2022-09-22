// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:asses1/SocialButton.dart';
import 'package:asses1/forgetpage.dart';
import 'package:asses1/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool isEmailCorrect = false;
  TextEditingController emailtext = TextEditingController();
  final SnackBar snackBarForLoginError =
      const SnackBar(content: Text('You Entered wrong Email Or Password'));
  TextEditingController passtext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 70),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assest/images/login-screen-mailmeabhi1987.jpg"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: formkey,
                  child: Column(
                    children: [
                      textField(emailtext, 'example@gmail.com',
                          Icons.person_outline, validateEmail),
                      const SizedBox(
                        height: 40,
                      ),
                      textField(passtext, 'Password', Icons.lock, validatePass),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(210, 0, 0, 0),
                  child: TextButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ForgetPage(),
                          ));
                    }),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Color(0xff1a4f8b),
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                  child: TextButton(
                    // onPressed: !formkey.currentState!.validate()
                    //     ? null
                    //     : () {
                    //         checkloging(emailtext.text.toString(),
                    //                 passtext.text.toString())
                    //             ? Navigator.push(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                   builder: (_) => Home(
                    //                     email: 'fake@email.com',
                    //                   ),
                    //                 ))
                    //             : ScaffoldMessenger.of(context)
                    //                 .showSnackBar(snackBarForLoginError);
                    //       },
                    onPressed: () {
                      !formkey.currentState!.validate()
                          ? null
                          : () {
                              checkloging(emailtext.text.toString(),
                                      passtext.text.toString())
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => Home(
                                          email: 'fake@email.com',
                                        ),
                                      ))
                                  : ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBarForLoginError);
                            };
                    },
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(color: Color(0xff1b3c4d8), fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Or Connect With Social',
                  style: TextStyle(color: Colors.black38, fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialButton(
                      buttonName: 'Facebook',
                      buttonColorCodeInteger: 0xff1a4f8b,
                    ),
                    SocialButton(
                      buttonName: 'Google',
                      buttonColorCodeInteger: 0xfff14436,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Container textField(
    TextEditingController textController,
    String hintString,
    IconData iconForPrefixIcon,
    Function(String) validateEmail,
  ) {
    return Container(
      color: const Color(0xff1f1f1f1),
      child: TextFormField(
        controller: textController,
        validator: (v) {
          validateEmail(v!);
          return null;
        },
        style: const TextStyle(color: Color(0xff6085ae)),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255), width: 3),
            ),
            // labelText: lebel,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xff6085ae), width: 3),
            ),
            hintText: hintString,

            // hintStyle: hintStylecolor:Color(0xff1406c9e),
            prefixIcon: Icon(
              iconForPrefixIcon,
              color: const Color(0xff6085ae),
            ),
            // fillColor: Colors.yellow,
            hoverColor: Colors.black),
      ),
    );
  }
}

bool checkloging(String tx1, String tx2) {
  if (tx1 == "fake@email.com") {
    if (tx2 == '12345678') {
      return true;
    } else {
      return false;
    }
  }
  return false;
}

String validateEmail(String value) {
  if (value.isEmpty) {
    return "Required";
  } else {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (!emailValid) {
      return "Please Enter Correct Email";
    } else {
      return '';
    }
  }
}

String validatePass(value) {
  if (value.length == 0) {
    return "Required";
  } else if (value.length < 8) {
    return "Password Should Be Minimum 8 Character";
  } else {
    return "";
  }
}
