// ignore_for_file: must_be_immutable

import 'package:asses1/forgetpage.dart';
import 'package:asses1/loginpage.dart';
import 'package:asses1/view.dart';
import 'package:flutter/material.dart';
import 'api.dart';

class Home extends StatelessWidget {
  // ignore: unnecessary_new
  Api a = new Api();
  final String email;
  Home({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,

        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              email,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ));
            },
            icon: const Icon(
              Icons.login,
              color: Colors.black,
            ),
          ),
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (_) => const ForgetPage(),
          //         ));
          //   },
          //   icon: const Icon(
          //     Icons.login,
          //     color: Colors.black,
          //   ),
          // )
        ],
        // actions: [Text('data')],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assest/images/image3.jpg"),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    height: 60,
                    width: 60,
                    // child: Image.asset("assest/images/image2.jfif"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'William John Malik',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Aggersive Investor'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 10,
              color: Color.fromARGB(255, 148, 143, 143),
            ),
            const MenuNameWidget(
              iconData: Icons.perm_identity,
              menuName: "Personal Data",
            ),
            const MenuNameWidget(
              iconData: Icons.settings,
              menuName: "Settings",
            ),
            const MenuNameWidget(
              iconData: Icons.question_answer,
              menuName: "E-Statement",
            ),
            const MenuNameWidget(
              iconData: Icons.heart_broken,
              menuName: "Refferal-Code",
            ),
            const Divider(
              height: 25,
              color: Color.fromARGB(255, 148, 143, 143),
            ),
            const MenuNameWidget(
              iconData: Icons.textsms,
              menuName: "FAQs",
            ),
            const MenuNameWidget(
              iconData: Icons.create,
              menuName: "Our Handbook",
            ),
            const MenuNameWidget(
              iconData: Icons.people,
              menuName: "Community",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
              // ignore: prefer_const_constructors
              height: 70,
              width: 330,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 197, 189, 196),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const ListTile(
                  leading: Icon(
                    Icons.headset_mic,
                    color: Color.fromARGB(255, 219, 33, 243),
                  ),
                  title: Text(
                    'Our Handbook',
                    style: TextStyle(
                        color: Color.fromARGB(255, 219, 33, 243),
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              width: 325,
              child: FutureBuilder(
                  future: a.getData(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator());
                    } else if (!snapshot.hasData) {
                      return const SizedBox(
                        height: 20,
                        width: 40,
                        child: Text('Data Not Exist'),
                      );
                    } else {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) =>
                            MoreList(
                          img: snapshot.data[index]['avatar'],
                          name: snapshot.data[index]['first_name'] +
                              " " +
                              snapshot.data[index]['last_name'],
                        ),
                      );
                    }
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuNameWidget extends StatelessWidget {
  final String menuName;
  final IconData iconData;
  final IconData iconData1;
  const MenuNameWidget({
    Key? key,
    required this.iconData,
    required this.menuName,
    this.iconData1 = Icons.chevron_right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 224, 224),
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          // color: Color.fromARGB(255, 179, 171, 171),
          height: 40,
          width: 40,
          child: Icon(
            iconData,
            color: Colors.black,
          ),
        ),
        title: Text(
          menuName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}

class MoreList extends StatelessWidget {
  final String name;
  final String img;
  const MoreList({
    required this.name,
    required this.img,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => View(img: img),
                ),
              )),
          child: Container(
            width: 160.0,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(img), fit: BoxFit.cover),
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: 30,
          width: 160,
          child: Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
//  SizedBox(
//               height: 10,
//             ),
