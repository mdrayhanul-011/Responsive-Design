import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.5),
      appBar: AppBar(
        title: Text(
          'HUMMING \n BIRD.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Episodes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'FLUTTER WEB.\n THE BASICS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                textAlign: TextAlign.start,
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'In this course, we will go over the basics of using Flutter Web for development. '
                        'Topics will include Responsive Layout, Deploying, Font Changes, hover functionality, modals, and more.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60, vertical: 12)),
              elevation: MaterialStateProperty.all(10),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
            ),
            child: Text(
              'Join course',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}