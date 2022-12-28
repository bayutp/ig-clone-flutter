import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SplashScreen());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Instagram",
            style: TextStyle(
                color: Colors.black87, fontSize: 32.0, fontFamily: 'Satisfy'),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                CupertinoIcons.add_circled,
                size: 24.0,
                color: Colors.black45,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                size: 24.0,
                color: Colors.black45,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.chat_bubble_text,
                size: 24.0,
                color: Colors.black45,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
            child: Center(
          child: Image.asset(
            "assets/images/meta_logo.png",
            width: 90.0,
            height: 90.0,
          ),
        )),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Image.asset(
                'assets/images/ig_logo.png',
                width: 95,
                height: 95,
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("from"),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/meta_logo.png",
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
