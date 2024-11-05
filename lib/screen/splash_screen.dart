import 'package:fitness_app/screen/fitness_track.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/bg5.png"),
            Center(
              child: Column(
                children: [
                  Text(
                    "Track your Active Lifestyle",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Find your way to the perfect body",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              color: Colors.black,
              elevation: 10,
              minWidth: 200,
              height: 70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FitnessTrack(),
                  ),
                );
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
