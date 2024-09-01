import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  MobileBody({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white.withOpacity(0.9), // Adjusted opacity
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9), // Adjusted opacity
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Text(
              'HUMMING \n BIRD.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SKILL UP NOW!',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'TAP HERE',
                        style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.w400), // Change 'Colors.red' to your desired color
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        Icon(Icons.video_settings_rounded),
                        SizedBox(width: 20),
                        Text(
                          'Episodes',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        Icon(Icons.info),
                        SizedBox(width: 20),
                        Text(
                          'About',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'FLUTTER WEB\n THE BASICS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 14),
              const Text(
                'In this course, we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, hover, functionality, modals, and more.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor:
                  MaterialStateProperty.all(Colors.white), // Text color
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60, vertical: 12)),
                  elevation: MaterialStateProperty.all(10),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
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
        ),
      ),
    );
  }
}
