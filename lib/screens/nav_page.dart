import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:EntertainmentMania/screens/movies_page.dart';
import 'package:EntertainmentMania/screens/shows_page.dart';
import 'package:EntertainmentMania/screens/start_page.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int navIndex = 0;

  List screenList = [MoviesPage(), ShowsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          currentIndex: navIndex,
          selectedItemColor: Color.fromARGB(255, 102, 7, 225),
          backgroundColor: Color.fromARGB(255, 15, 14, 14),
          onTap: (index) {
            setState(() {
              navIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_outlined,
                size: 30,
              ),
              label: 'Movies',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.monitor_sharp,
                  size: 30,
                ),
                label: 'Shows')
          ]),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
            child: Image.asset(
              'assets/images/logo.png',
              width: 50,
            ),
          ),
        ],
        title: Text(
          'Entertaiment Mania',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) {
                return StartPage();
              },
            ));
          },
        ),
        backgroundColor: Color.fromARGB(255, 14, 14, 14),
      ),
      body: screenList[navIndex],
    );
  }
}
