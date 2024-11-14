import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/PageIntro.dart';
import 'package:flutter_application_1/pages/ActivityCategoryScreen.dart';

class Secondonboardingscreen extends StatelessWidget {
  const Secondonboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Center(
          child: PageIntro(
        title: " widget.title",
        height: MediaQuery.of(context).size.height,
        pageHeader: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: TextStyle(
                color: Colors.white,
                fontSize: 44.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "re-energize",
              style: TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "discover",
              style: TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
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
                  builder: (context) => const ActivityCategoryScreen())),
        ),
      )),
    );
  }
}
