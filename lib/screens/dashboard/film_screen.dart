import 'package:flutter/material.dart';

class FilmScreen extends StatelessWidget {
  const FilmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> filmImages = [
      'assets/images/film1.jpeg',
      'assets/images/film2.jpeg',
      'assets/images/film3.jpeg',
      'assets/images/film4.jpeg',
      'assets/images/film5.jpeg',
      'assets/images/film1.jpeg',
      'assets/images/film7.jpeg',
      'assets/images/film8.jpeg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Film'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Menampilkan 3 kolom
            crossAxisSpacing: 10, // Jarak antar kolom
            mainAxisSpacing: 10, // Jarak antar baris
          ),
          itemCount: filmImages.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                filmImages[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
