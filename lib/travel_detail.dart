import 'package:flutter/cupertino.dart';

class Travel{
  String name;
  String lastname;
  String imageUrl;
  String country;
  String rating;
  List image;

  Travel({@required this.country,@required this.image, @required this.rating, @required this.imageUrl,@required this.lastname,@required this.name});
}

List<Travel> travellist=[

  Travel(image:["images/l1.jpeg","images/l2.jpeg","images/l3.jpeg","images/l4.jpeg","images/l5.jpeg",],country: "Indonesia",imageUrl: "images/pic2.jpeg",name: "Lempuyang",lastname: "Temple",rating: "4.5",),
    Travel(image:["images/e1.jpeg","images/e2.jpeg","images/e5.jpeg","images/e4.jpeg","images/e5.jpeg",],country: "France",imageUrl: "images/pic1.jpeg",name: "The Eiffle",lastname: "Tower",rating: "4.4"),
   Travel(image:["images/k1.jpeg","images/k2.jpeg","images/k3.jpeg","images/k4.jpeg","images/k5.jpeg",],country: "Thailand",imageUrl: "images/pic4.webp",name: "Koh Samui",lastname: "",rating: "4.4"),

];