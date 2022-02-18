import 'package:flutter/material.dart';
import 'package:tonal_challenge/styles.dart';

import 'src/pages/input_page.dart';

void main() => runApp(BodyInformationWidget());

class BodyInformationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      theme: ThemeData.dark().copyWith(
        //.copyWith
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor:
            kScaffoldBackgroundColor, //scaffoldBackgroundColor
      ),
      // Navigation
      initialRoute: "/",
      routes: {
        '/': (context) => MainScreen(),
        '/first': (context) => InputPage(),
      },
    );
  }
}

// main screen
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Body Information Widget',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black87,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            ),
            Text(
              'Terrance Tao',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                letterSpacing: 2.5,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 70.0,
              width: 300.0,
              child: Divider(
                color: Colors.teal,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ElevatedButton(
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Body Information Result',
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
