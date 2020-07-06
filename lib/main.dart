import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_ui/secondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.dispose();
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 430,
                      width: double.infinity,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text("Enjoy every\nmoment with us!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic))),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/pic5.jpeg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                        height: 480,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: FractionalOffset.center,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.0),
                            Colors.black,
                          ],
                          stops: [0.0, 1],
                        ))),
                  ],
                ),
                Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()));
                        },
                        child: Text(
                          "sign in",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))),
                SizedBox(height: 19),
                Text(
                  "Create an account",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
