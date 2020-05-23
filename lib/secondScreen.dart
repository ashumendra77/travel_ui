import 'package:flutter/material.dart';
import 'package:travel_ui/thirdScreen.dart';
import 'package:travel_ui/travel_detail.dart';

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
          height: 40,
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  titlelist[index],
                  style: TextStyle(
                    fontSize: 15,
                    color: selectedIndex == index
                        ? Color(0xfff36f7c)
                        : Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CircleAvatar(
                backgroundColor:
                    selectedIndex == index ? Color(0xfff36f7c) : Colors.white,
                radius: 3,
              )
            ],
          )),
    );
  }

  Widget getDetail(Travel travel) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(travelnameobject: travel)));
      },
      child: Row(
        children: <Widget>[
          Container(
              height: 260,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(travel.imageUrl), fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(top: 130.0, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      travel.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text(
                      travel.lastname,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on, color: Color(0xfff36f7c)),
                        SizedBox(width: 10),
                        Text(
                          travel.country,
                          style: TextStyle(color: Color(0xfff36f7c)),
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(width: 20)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
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
                SizedBox(height: 15),
                Text("Discover",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                Text("world with us!",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                SizedBox(height: 20),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffeeeeee),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text("Search something..."),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xfff36f7c),
                            borderRadius: BorderRadius.circular(20)),
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
                      children: titlelist
                          .toList()
                          .asMap()
                          .entries
                          .map((MapEntry map) {
                        return getIndex(map.key);
                      }).toList()),
                ),
                Container(
                    height: 250,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: travellist
                            .toList()
                            .asMap()
                            .entries
                            .map((MapEntry map) {
                          return getDetail(map.value);
                        }).toList())),
                SizedBox(height: 15)
              ],
            ),
          ),
        ],
      )),
    );
  }
}
