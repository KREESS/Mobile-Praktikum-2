import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.7),
      body: Center(
        child: Lottie.asset(
          'assets/Main_Scene.json', // Path animasi Lottie Anda
          width: 150,
          height: 100,
          fit: BoxFit.cover,
          repeat: true, // Animasi akan terus berulang
        ),
      ),
    );
  }
}
