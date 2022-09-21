import 'package:asses1/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assest/images/forget.jpg"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  color: Color(0xff1f1f1f1),
                  child: TextField(
                    style: TextStyle(color: Color(0xff6085ae)),
                    decoration: InputDecoration(
                        // color: Color(col),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 3),
                        ),
                        // labelText: lebel,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xff6085ae), width: 3),
                        ),
                        hintText: 'example@gmail.com',
                        // hintStyle: hintStylecolor:Color(0xff1406c9e),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: Color(0xff6085ae),
                        ),
                        // fillColor: Colors.yellow,
                        hoverColor: Colors.blue),
                  ),
                ),
                // const TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     // labelText: 'Email',
                //     hintText: 'example@gmail.com',
                //     prefixIcon: Icon(
                //       Icons.person_outline,
                //     ),
                //     fillColor: Colors.yellow,
                //   ),
                // ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  height: 55,
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Color(0xff1a4f8b),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'RESET',
                      style: TextStyle(color: Color(0xff1b3c4d8), fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already Have an Account?',
                      style: TextStyle(color: Colors.black45),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const LoginPage(),
                              ));
                        },
                        child: const Text(
                          'Login here',
                          style: TextStyle(color: Color(0xff1a4f8b)),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
