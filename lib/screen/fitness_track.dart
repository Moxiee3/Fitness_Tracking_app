import 'package:fitness_app/color/color.dart';
import 'package:fitness_app/services/service.dart';
import 'package:flutter/material.dart';

class FitnessTrack extends StatefulWidget {
  const FitnessTrack({super.key});

  @override
  _fitnessTrack createState() => _fitnessTrack();
}

class _fitnessTrack extends State<FitnessTrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.only(top: 5, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HI, Ucok",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Image.asset(
                  "images/menu.png",
                  height: 30,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 30),
                  // for home image
                  Image.asset(
                    'images/bg3.png',
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Fitness Tracking",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "SERVICES",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Services(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
