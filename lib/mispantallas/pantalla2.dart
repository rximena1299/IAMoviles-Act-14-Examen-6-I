import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
////////////////////////////////////////////////////////////
/// PANTALLA 2
////////////////////////////////////////////////////////////

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDark,
      appBar: AppBar(
        backgroundColor: appleRed,
        title: const Text("Explorar Música",
            style: TextStyle(color: Colors.white)),
      ),
      bottomNavigationBar: navBar(context, 1),
      body: ListView(
        children: [
          songCard(context, "Blinding Lights", "The Weeknd",
              "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/The_Weeknd_-_Blinding_Lights.png"),
          songCard(context, "Cruel Summer", "Taylor Swift",
              "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/TAYLOR.jfif"),
          songCard(context, "Tití Me Preguntó", "Bad Bunny",
              "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/titi.webp"),
          songCard(context, "Flowers", "Miley Cyrus",
              "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/MAILI.jfif"),
          songCard(context, "As It Was", "Harry Styles",
              "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/aSITWAS.jfif"),
        ],
      ),
    );
  }
}

Widget songCard(BuildContext context, String titulo, String artista,
    String imageUrl) {
  return Card(
    color: const Color(0xFF1C1C1C),
    margin: const EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(imageUrl, width: 50, fit: BoxFit.cover),
      ),
      title: Text(titulo, style: const TextStyle(color: Colors.white)),
      subtitle:
          Text(artista, style: const TextStyle(color: Colors.white70)),
      trailing: const Icon(Icons.play_circle_fill,
          color: Colors.white, size: 30),
      onTap: () => Navigator.pushNamed(context, '/pantalla3'),
    ),
  );
}
