import 'package:flutter/material.dart';
import 'package:travel_ui/travel_detail.dart';

class DetailPage extends StatefulWidget {
  final Travel travelnameobject;

  DetailPage({@required this.travelnameobject});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> buttonlist = ["About", "Price", "Insurance"];
  int selectbottonlist = 0;

  Widget getBotton(int index) {
    return GestureDetector(
      onTap: () {
        selectbottonlist = index;
        setState(() {});
      },
      child: Container(
          height: 50,
          width: 125,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  buttonlist[index],
                  style: TextStyle(
                      fontSize: 18,
                      color: selectbottonlist == index
                          ? Color(0xfff36f7c)
                          : Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: selectbottonlist == index
                      ? Color(0xfff36f7c)
                      : Colors.white,
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Icon(
                      Icons.short_text,
                      size: 33,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    widget.travelnameobject.name +
                        ", " +
                        widget.travelnameobject.country,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                SizedBox(height: 15),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 80, left: 15, right: 15),
                      height: 190,
                      width: 310,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 4,
                                spreadRadius: 3,
                                offset: Offset(4, 4)),
                            BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 4,
                                spreadRadius: 3,
                                offset: Offset(-4, -4)),
                          ]),
                      child: Container(
                          margin:
                              EdgeInsets.only(left: 16, right: 16, bottom: 9),
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Text(
                                "Lipa Noi Beach",
                                style: TextStyle(fontSize: 16),
                              )),
                              Text(
                                widget.travelnameobject.rating,
                                style: TextStyle(color: Color(0xfff36f7c)),
                              ),
                              Icon(Icons.star, color: Color(0xfff36f7c))
                            ],
                          )),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                        height: 210,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    widget.travelnameobject.imageUrl),
                                fit: BoxFit.fill))),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                    height: 60,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: buttonlist
                            .toList()
                            .asMap()
                            .entries
                            .map((MapEntry map) {
                          return getBotton(map.key);
                        }).toList())),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Koh Samui is famous for its magnificient beaches, forests on mountain slopes and cold waterfalls that can't be found anywhere else in Thailand. On Koh Samui, you'll find quite fishing villages, coconut palm trees harvested by monkeys, stunning waterfalls.",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xfff36f7c)),
              ),
              child: Center(
                  child: Text(
                "\$ ${2350}",
                style: TextStyle(color: Color(0xfff36f7c)),
              )),
            ),
            Container(
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                  color: Color(0xfff36f7c),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xfff36f7c)),
                ),
                child: FlatButton(
                  onPressed: () => debugPrint("p"),
                  child: Text(
                    "Buy now",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
