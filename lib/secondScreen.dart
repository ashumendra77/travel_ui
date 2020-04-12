import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int selectedIndex = 0;
  List<String> titlelist = ["New", "Most viewed", "Hot tour", "All"];

  Widget getIndex(int index) {
    return GestureDetector(
      onTap: () {
        selectedIndex = index;
        setState(() {});
      },
      child: Container(
          // height: 60,
          // width: double.infinity,
          // color: Colors.blue,
          child: Center(child:Text(titlelist[index],style: TextStyle(decoration:TextDecoration.underline),))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: <Widget>[
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // SizedBox(height:30),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage("images/pic5.jpeg"),
                              fit: BoxFit.fill,
                            ))),
                    Icon(
                      Icons.short_text,
                      size: 30,
                    )
                  ],
                ),
              ),
              Text("Discover",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              Text("world with us!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              SizedBox(height: 20),
              Container(
                height: 70,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(child: Text("Search something..")),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xfff36f7c),
                          borderRadius: BorderRadius.circular(20)),
                      // color:Colors.white,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xfff36f7c),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.airplanemode_active,
                        color: Colors.white,
                        size: 30,
                      )),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xfffce8ea),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.business,
                        color: Color(0xfff36f7c),
                        size: 30,
                      )),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xfffce8ea),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.camera_alt,
                        color: Color(0xfff36f7c),
                        size: 30,
                      )),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xfffce8ea),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.directions_bus,
                        color: Color(0xfff36f7c),
                        size: 30,
                      )),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // scrollDirection: Axis.horizontal,
                  children: titlelist.toList().asMap().entries.map((MapEntry map){
                  return getIndex(map.key);
                  print(map);
                }).toList()),
              ),
              // Container(
              //   height:60,
              //   child:Row(
              //     // scrollDirection: Axis.horizontal,
              //     children: titlelist.toList().asMap().entries.map((MapEntry map){
              //     return getIndex(map.key);
              //   }).toList()),
              // ),
              Text("all")
            ],
          ),
          ],)
          ),
    );
  }
}
