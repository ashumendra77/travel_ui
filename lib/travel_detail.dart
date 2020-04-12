import 'package:flutter/cupertino.dart';

class Travel{
  String name;
  String lastname;
  String imageUrl;
  String country;

  Travel({@required this.country, @required this.imageUrl,@required this.lastname,@required this.name});
}

List<Travel> travellist=[

  Travel(country: "Indonesia",imageUrl: "images/pic2.jpeg",name: "Lempuyang",lastname: "Temple"),
    Travel(country: "France",imageUrl: "images/pic1.jpeg",name: "The Eiffle",lastname: "Tower"),

];