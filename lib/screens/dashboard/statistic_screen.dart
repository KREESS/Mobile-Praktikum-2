import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/movie_card.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Menghilangkan tombol back
        title: const Text('Filmore'),
        backgroundColor: Colors.teal,
        elevation: 4,
        actions: [
          Tooltip(
            message: 'Logout', // Pesan yang muncul saat hover
            child: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Statistik Anda',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(221, 255, 255, 255),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: buildStatCard('Total Ditonton', 120, Colors.blue)),
                SizedBox(width: 15),
                Expanded(
                    child: buildStatCard('Total Favorit', 50, Colors.pink)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: buildStatCard('Watch Later', 30, Colors.orange)),
                SizedBox(width: 15),
                Expanded(
                    child: buildStatCard('Belum Ditonton', 20, Colors.grey)),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Rekomendasi Film',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MovieCard(
                      title: 'Film 1', imagePath: 'assets/images/film1.jpeg'),
                  MovieCard(
                      title: 'Film 2', imagePath: 'assets/images/film2.jpeg'),
                  MovieCard(
                      title: 'Film 3', imagePath: 'assets/images/film3.jpeg'),
                  MovieCard(
                      title: 'Film 4', imagePath: 'assets/images/film4.jpeg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStatCard(String title, int count, Color color) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: color.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
