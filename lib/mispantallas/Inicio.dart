import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
////////////////////////////////////////////////////////////
/// PANTALLA 1 - INICIO
////////////////////////////////////////////////////////////

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDark,
      appBar: AppBar(
        backgroundColor: appleRed,
        centerTitle: true,
        title: const Text(
          "Apple Music",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      bottomNavigationBar: navBar(context, 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  "Ximena Reyes 6°I",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(15),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/NETWORK.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "🔥 Más Escuchados",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  artistaCard("Bad Bunny",
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/titi.webp"),
                  artistaCard("Taylor Swift",
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/TAYLOR.jfif"),
                  artistaCard("The Weeknd",
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/The_Weeknd_-_Blinding_Lights.png"),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "🎧 Géneros",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),

            generoCuadro(context, "Pop"),
            generoCuadro(context, "Reggaetón"),
            generoCuadro(context, "Rock"),
            generoCuadro(context, "Electrónica"),
          ],
        ),
      ),
    );
  }
}

Widget artistaCard(String nombre, String imageUrl) {
  return Container(
    width: 150,
    margin: const EdgeInsets.only(left: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
    ),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(15)),
        ),
        child: Text(
          nombre,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget generoCuadro(BuildContext context, String genero) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, '/pantalla2'),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [appleRed, Colors.pinkAccent],
        ),
      ),
      child: Center(
        child: Text(
          genero,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}