import 'package:flutter/material.dart';

class FilmScreen extends StatefulWidget {
  const FilmScreen({super.key});

  @override
  State<FilmScreen> createState() => _FilmScreenState();
}

class _FilmScreenState extends State<FilmScreen> {
  final List<Map<String, String>> films = [
    {'title': 'The Shawshank Redemption', 'image': 'assets/images/film1.jpeg'},
    {'title': 'The Godfather', 'image': 'assets/images/film2.jpeg'},
    {'title': 'The Dark Knight', 'image': 'assets/images/film3.jpeg'},
    {'title': 'Pulp Fiction', 'image': 'assets/images/film4.jpeg'},
    {'title': 'Fight Club', 'image': 'assets/images/film5.jpeg'},
    {'title': 'Forrest Gump', 'image': 'assets/images/film6.jpeg'},
    {'title': 'Inception', 'image': 'assets/images/film7.jpeg'},
    {'title': 'The Matrix', 'image': 'assets/images/film8.jpeg'},
    {'title': 'Se7en', 'image': 'assets/images/film1.jpeg'},
    {'title': 'The Silence of the Lambs', 'image': 'assets/images/film1.jpeg'},
    {'title': 'Interstellar', 'image': 'assets/images/film1.jpeg'},
    {'title': 'Gladiator', 'image': 'assets/images/film1.jpeg'},
    {'title': 'The Green Mile', 'image': 'assets/images/film1.jpeg'},
    {'title': 'Parasite', 'image': 'assets/images/film1.jpeg'},
    {'title': 'Joker', 'image': 'assets/images/film1.jpeg'},
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredFilms = films.where((film) {
      return film['title']!.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Film'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Cari Film',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Menampilkan 3 kolom
                  crossAxisSpacing: 10, // Jarak antar kolom
                  mainAxisSpacing: 10, // Jarak antar baris
                ),
                itemCount: filteredFilms.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(filteredFilms[index]['image']!),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(filteredFilms[index]['title']!),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Image.asset(
                                filteredFilms[index]['image']!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                              Container(
                                color: Colors.black54,
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  filteredFilms[index]['title']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
