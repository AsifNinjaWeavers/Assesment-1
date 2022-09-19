import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        // actions: [Text('data')],
      ),
      body: Column(
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
        ],
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
