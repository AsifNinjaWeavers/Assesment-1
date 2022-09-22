// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:asses1/forgetpage.dart';
import 'package:asses1/home.dart';
import 'package:asses1/validator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool isEmailCorrect = false;
  Validator v = new Validator();
  TextEditingController emailtext = TextEditingController();

  TextEditingController passtext = TextEditingController();
  String validateEmail(value) {
    if (value.length == 0) {
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

  // bool validate() {
  //   if (formkey.currentState!.validate()) {
  //     return true;
  //   }
  //   return false;
  // }

  String validatePass(value) {
    if (value.length == 0) {
      return "Required";
    } else if (value.length < 8) {
      return "Password Should Be Minimum 8 Character";
    } else {
      return "";
    }
  }

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

                // InputField(
                //   example: 'example@gmail.com',
                //   icon: Icons.person_outline,
                //   txt: emailtext,
                // ),
                // const SizedBox(
                //   height: 40,
                // ),
                // InputField(
                //   example: 'Password',
                //   icon: Icons.lock,
                //   txt: passtext,
                // ),
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
                    onPressed: () {
                      // final snackBar = SnackBar(
                      //   content: Text('Please Enter All The Field'),
                      // );
                      final snackBar1 = const SnackBar(
                          content: Text('You Entered wrong Email Or Password'));
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
                              .showSnackBar(snackBar1);
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
                  children: const [
                    SocialButton(
                      text: 'Facebook',
                      col: 0xff1a4f8b,
                    ),
                    SocialButton(
                      text: 'Google',
                      col: 0xfff14436,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Container textField(
    TextEditingController txt,
    String example,
    IconData icon,
    validateEmail,
  ) {
    return Container(
      color: const Color(0xff1f1f1f1),
      child: TextFormField(
        controller: txt,
        validator: validateEmail,
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
            hintText: example,

            // hintStyle: hintStylecolor:Color(0xff1406c9e),
            prefixIcon: Icon(
              icon,
              color: const Color(0xff6085ae),
            ),
            // fillColor: Colors.yellow,
            hoverColor: Colors.black),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final int col;
  const SocialButton({
    required this.text,
    required this.col,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 178,
      decoration: BoxDecoration(
        color: Color(col),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Color(0xff1b3c4d8), fontSize: 18),
          )),
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

// class InputField extends StatelessWidget {
//   // final String lebel;
//   final TextEditingController txt;
//   final String example;
//   final IconData icon;

//   const InputField({
//     required this.txt,
//     required this.example,
//     required this.icon,
//     // required this.lebel,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xff1f1f1f1),
//       child: TextField(
//         controller: txt,
//         style: const TextStyle(color: Color(0xff6085ae)),
//         decoration: InputDecoration(
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: const BorderSide(
//                   color: Color.fromARGB(255, 255, 255, 255), width: 3),
//             ),
//             // labelText: lebel,
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: const BorderSide(color: Color(0xff6085ae), width: 3),
//             ),
//             hintText: example,

//             // hintStyle: hintStylecolor:Color(0xff1406c9e),
//             prefixIcon: Icon(
//               icon,
//               color: const Color(0xff6085ae),
//             ),
//             // fillColor: Colors.yellow,
//             hoverColor: Colors.black),
//       ),
//     );
//   }
// }

