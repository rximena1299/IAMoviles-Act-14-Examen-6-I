import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/Inicio.dart';
import 'package:myapp/mispantallas/pantalla2.dart';
import 'package:myapp/mispantallas/pantalla3.dart';

void main() {
  runApp(const MyApp());
}

const Color appleRed = Color(0xFFFA2D65);
const Color backgroundDark = Color(0xFF0F0F0F);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}

////////////////////////////////////////////////////////////
/// NAV BAR GLOBAL
////////////////////////////////////////////////////////////

Widget navBar(BuildContext context, int index) {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    selectedItemColor: appleRed,
    unselectedItemColor: Colors.white70,
    currentIndex: index,
    type: BottomNavigationBarType.fixed,
    onTap: (i) {
      if (i == 0) Navigator.pushNamed(context, '/');
      if (i == 1) Navigator.pushNamed(context, '/pantalla2');
      if (i == 2) Navigator.pushNamed(context, '/pantalla2');
      if (i == 3) Navigator.pushNamed(context, '/pantalla3');
    },
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home), label: "Inicio"),
      BottomNavigationBarItem(
          icon: Icon(Icons.search), label: "Buscar"),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_music), label: "Biblioteca"),
      BottomNavigationBarItem(
          icon: Text(
            "♬",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          label: "Music"),
    ],
  );
}