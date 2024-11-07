import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:EntertainmentMania/screens/nav_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    void toNav() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => NavPage()));
    }

    void alertBox() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.onTertiary,
            title: Text(
              'Entertainment Mania',
              style: TextStyle(color: Colors.white),
            ),
            content: Container(
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Entertainment Mania is a Flutter application designed to provide users with a comprehensive database of movies and TV shows. The app utilizes the TMDb (The Movie Database) API to fetch information about various films and television series, including details about cast members, recommendations, and similar movies.',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'GitHub - @deepansh007jain',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'))
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Color.fromARGB(255, 248, 27, 7)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/pxfuel.jpg',
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 250,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'ENTERTAINMENT MANIA',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 9, 9, 238),
                    Color.fromARGB(255, 129, 160, 230),
                  ])),
              child: TextButton(
                  onPressed: toNav,
                  style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    minimumSize: const Size(270, 40),
                    foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  ),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              child: Container(
                child: Text(
                  'About',
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ),
              onTap: alertBox,
            )
          ],
        ),
      ),
    );
  }
}
