import 'package:flutter/cupertino.dart';

class Travel{
  String name;
  String lastname;
  String imageUrl;
  String country;
  String rating;
  // String image;

  Travel({@required this.country,@required this.rating, @required this.imageUrl,@required this.lastname,@required this.name});
}
// @required this.image,
List<Travel> travellist=[

  Travel(country: "Indonesia",imageUrl: "images/pic2.jpeg",name: "Lempuyang",lastname: "Temple",rating: "4.5",),
    Travel(country: "France",imageUrl: "images/pic1.jpeg",name: "The Eiffle",lastname: "Tower",rating: "4.4"),
   Travel(country: "Thailand",imageUrl: "images/pic4.webp",name: "Koh Samui",lastname: "",rating: "4.4"),

];