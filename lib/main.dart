import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'confetti_show_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text(
                'HAPPY NEW YEAR',
                style: TextStyle(
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          child: Icon(Icons.add),
          onPressed: () {
            print('hello');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: value,
          onTap: (int value) => print(value),
          items: [
            BottomNavigationBarItem(
              title: Text('phone'),
              icon: IconButton(
                icon: Icon(Icons.phone),
                onPressed: () {},
              ),
            ),
            BottomNavigationBarItem(
              title: Text('email'),
              icon: IconButton(
                icon: Icon(Icons.email),
                onPressed: () {},
              ),
            ),
            BottomNavigationBarItem(
              title: Text('message'),
              icon: IconButton(
                icon: Icon(Icons.message),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/happy.jpg'),
              fit: BoxFit.contain,
            ),
          ),
          child: ConfettiShowWidget(),
        ),
      ),
    );
  }
}
