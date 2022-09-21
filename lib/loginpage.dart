import 'package:asses1/forgetpage.dart';
import 'package:asses1/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assest/images/login-screen-mailmeabhi1987.jpg"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 37),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  color: const Color(0xff1f1f1f1),
                  child: TextField(
                    style: TextStyle(color: Color(0xff6085ae)),
                    decoration: InputDecoration(
                        // color: Color(col),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 3),
                        ),
                        // labelText: lebel,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xff6085ae), width: 3),
                        ),
                        hintText: 'example@gmail.com',
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: Color(0xff6085ae),
                        ),
                        // fillColor: Colors.yellow,
                        hoverColor: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  color: const Color(0xff1f1f1f1),
                  child: TextField(
                    style: const TextStyle(color: Color(0xff6085ae)),
                    decoration: InputDecoration(
                        // color: Color(col),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 3),
                        ),
                        // labelText: lebel,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xff6085ae), width: 3),
                        ),
                        hintText: 'Password',

                        // hintStyle: hintStylecolor:Color(0xff1406c9e),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xff6085ae),
                        ),
                        // fillColor: Colors.yellow,
                        hoverColor: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(210, 0, 0, 0),
                  child: TextButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ForgetPage(),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Home(),
                          ));
                    },
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(color: Color(0xff1b3c4d8), fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                    Container(
                      height: 38,
                      width: 178,
                      decoration: const BoxDecoration(
                        color: Color(0xff1a4f8b),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Facebook',
                            style: TextStyle(
                                color: Color(0xff1b3c4d8), fontSize: 18),
                          )),
                    ),
                    Container(
                      height: 38,
                      width: 178,
                      decoration: const BoxDecoration(
                        color: Color(0xfff14436),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Google',
                            style: TextStyle(
                                color: Color(0xff1b3c4d8), fontSize: 18),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

// class SocialButton extends StatelessWidget {
//   final String text;
//   final int col;
//   SocialButton({
//     required this.text,
//     required this.col,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 38,
//       width: 178,
//       decoration: BoxDecoration(
//         color: Color(col),
//         borderRadius: BorderRadius.all(
//           Radius.circular(5),
//         ),
//       ),
//       child: TextButton(
//           onPressed: () {},
//           child: Text(
//             text,
//             style: TextStyle(color: Color(0xff1b3c4d8), fontSize: 18),
//           )),
//     );
//   }
// }
