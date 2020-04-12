import 'package:flutter/material.dart';

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
                      height: 450,
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
                        height: 470,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: FractionalOffset.center,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: [0.0, 1],
                          ),
                        )),
                  ],
                ),
                 SizedBox(height:10),
                Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius:BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      onPressed: () => debugPrint("p"),
                      child: Text(
                        "sign in",
                        style: TextStyle(color: Colors.white,fontSize: 18),
                      ),
                    )),
                    SizedBox(height:19),
                    Text("Create an account",style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,fontSize: 15),)
              ],
            )

            // Stack(
            //   children: <Widget>[
            //     Container(
            //       height: 450,
            //       width: double.infinity,
            //       child: Container(
            //           alignment: Alignment.bottomCenter,
            //           child: Text("Enjoy every\nmoment with us!",
            //               style: TextStyle(
            //                   color: Colors.white,
            //                   fontWeight: FontWeight.w800,
            //                   fontSize: 30,
            //                   fontStyle: FontStyle.italic))),
            //       decoration: BoxDecoration(
            //           image: DecorationImage(
            //               image: AssetImage("images/pic5.jpeg"),
            //               fit: BoxFit.fill)),
            //     ),
            //     Container(
            //         height: 480,
            //         decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //             begin: FractionalOffset.center,
            //             end: FractionalOffset.bottomCenter,
            //             colors: [
            //               Colors.black.withOpacity(0.0),
            //               Colors.black,
            //             ],
            //             stops: [0.0, 1.0],
            //           ),
            //         )),
            //     Padding(
            //       padding: EdgeInsets.only(top: 465.0, left: 20, right: 20),
            //       child: Center(
            //         child: Container(
            //           width: 200,
            //           height: 60,
            //           margin: EdgeInsets.only(left:50,right:50),
            //           // color:Colors.white,
            //           decoration: BoxDecoration(
            //             color: Colors.redAccent,
            //               borderRadius: BorderRadius.circular(20)),
            //           child: FlatButton(
            //             child: Text("sigh in",style: TextStyle(color: Colors.white,fontSize: 18),),
            //             //  color: Colors.red[300],
            //             onPressed: () => debugPrint("p"),
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(height:8),
            //     Text("Create an account",style: TextStyle(color: Colors.white),)
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
