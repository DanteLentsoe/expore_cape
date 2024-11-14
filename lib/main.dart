import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/SecondOnboardingScreen.dart';
import 'components/PageIntro.dart';

void main() {
  bool haveRead = true;
  String bookread = "The are of not giving an Eff";

  bool bookChecker() {
    if (bookread == "The are of not giving an Eff") {
      return true;
    } else {
      return false;
    }
  }

  print(bookChecker());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const mainBGGreen = Color(0xFF18d462);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hike Pro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainBGGreen),
        appBarTheme: const AppBarTheme(
          backgroundColor: mainBGGreen,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: PageIntro(
        title: widget.title,
        height: MediaQuery.of(context).size.height,
        pageHeader: Container(
            child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discover",
              style: TextStyle(
                color: Colors.white,
                fontSize: 44.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "amazing",
              style: TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "opportunities",
              style: TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        )),
        content: Container(
          alignment: Alignment.centerLeft, // Aligns container content left
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns text left
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "256,714",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "projects funded",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
        leading: IconButton(
          iconSize: 70,
          icon: Container(
            padding: const EdgeInsets.all(8), // Adds space around icon
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color(0xFFbdffc0),
              borderRadius: BorderRadius.all(
                  Radius.circular(100)), // Optional: rounded corners
            ),
            child: Transform.rotate(
              angle: 2.5,
              child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
            ),
          ),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Secondonboardingscreen())),
        ),
      )),
    );
  }
}
