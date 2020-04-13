import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
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
      child: Center(
        child: Container(
            height: 50,
            width: 100,
            child: Text(
              buttonlist[index],
              style: TextStyle(
                  fontSize: 18,
                  color:
                      selectbottonlist == index ? Colors.pink : Colors.black),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBarItem(),
      // appBar:AppBar(
      //   // bottomNavigationBar:
      // ),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () => debugPrint("p"),
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Icon(Icons.short_text),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Koh Samui,Thailand",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 15),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    height: 180,
                    width: 280,
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
                        margin: EdgeInsets.only(left: 16, right: 16, bottom: 9),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              "Lipa Noi Beach",
                              style: TextStyle(fontSize: 20),
                            )),
                            Text(
                              "4.5",
                              style: TextStyle(color: Colors.pink),
                            ),
                            Icon(Icons.star, color: Colors.pink)
                          ],
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10, left: 16),
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("images/pic1.jpeg"),
                              fit: BoxFit.fill))),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  height: 60,
                  // color: Colors.green,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: buttonlist
                          .toList()
                          .asMap()
                          .entries
                          .map((MapEntry map) {
                        return getBotton(map.key);
                      }).toList())),
              SizedBox(height: 10),
              Text(
                "Koh samui is famous for its magnificient beaches, forests on mountain slop and cold waterfall that can't found anywhere else in Thailand. On Koh samui, you will find quite fishing villages, coconut trees harvestage by monkeys, stunning waterfall.",
                style: TextStyle(fontSize: 17),
              ),
              //  BottomNavigationBar(onTap: (){},)
              // BottomNavigationBar(items: <BottomNavigationBarItem>[
              // ],)
            ],
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
              // color: Colors.blue[700],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.pink),
              ),
              child: Center(child: Text("\$ ${2278}")),
            ),
            Container(
                height: 60,
                width: 170,
                // color: Colors.blue[700],
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.pink),
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
