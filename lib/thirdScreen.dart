import 'package:flutter/material.dart';
import 'package:travel_ui/travel_detail.dart';

class DetailPage extends StatefulWidget {
  final Travel travelnameobject;
  // final List<String> tavel3@required this.tavel3,;

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
                    onPressed: (){Navigator.pop(context);},
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Icon(Icons.short_text,size: 33,),
                ],
              ),
              SizedBox(height: 15),
              Text(
                widget.travelnameobject.name +", "+ widget.travelnameobject.country,
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
                              style: TextStyle(fontSize: 19),
                            )),
                            Text(
                              "4.5",
                              style: TextStyle(color: Color(0xfff36f7c)),
                            ),
                            Icon(Icons.star, color: Color(0xfff36f7c))
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
                              image: AssetImage(widget.travelnameobject.imageUrl),
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
                border: Border.all(color: Color(0xfff36f7c)),
              ),
              child: Center(child: Text("\$ ${2278}",style: TextStyle(color: Color(0xfff36f7c)),)),
            ),
            // Container(
            //   height: 490,
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //     colors: [
            //       Colors.black.withOpacity(0.0),
            //       Colors.black,
            //     ],
            //     begin: FractionalOffset.topCenter,
            //     end: FractionalOffset.center,
            //     stops: [0,1]
            //   )),
            // ),
            Container(
                height: 60,
                width: 170,
                // color: Colors.blue[700],
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
