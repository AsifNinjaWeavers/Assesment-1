import 'package:asses1/api.dart';
import 'package:asses1/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 0;
  final Api api = Api();
  void _incrementCounter() {}
  @override
  void initState() {
    super.initState();
    callApi();
  }

  callApi() async {
    await api.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
