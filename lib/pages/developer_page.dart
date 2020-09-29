import 'dart:ui';
import 'package:codequiz/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevelopersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff8e3),
      body: ListView(
        children: [
          Container(
            //  margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 7))
                ]),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Container(
                    height: 300,
                    width: 600,
                    child: Image.asset(
                      "images/logo.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //  Positioned(
                //    child: CircleAvatar(
                //       radius: 40,
                //      backgroundImage: AssetImage("images/logo.jpg"),
                //    ),
                //  ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFf7abb9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1.4,
                      blurRadius: 10,
                      offset: Offset(0, 7),
                    )
                  ]),
              margin: EdgeInsets.only(right: 70, left: 70),
              height: 60,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFF1c223d),
                    size: 32,
                  ),
                  Text(
                    "Developers",
                    style: TextStyle(
                      color: Color(0xFF4d1d35),
                      fontFamily: "Ubuntu",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/arnob1.jpg"),
                ),
                title: Text(
                  "Arnob  Mahmud",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF393949)),
                ),
                subtitle: Text(
                  "BSc in Textile Engineering, Bangladesh University of Textiles (BUTEX)",
                  style: TextStyle(
                    color: Color(0xFF440544),
                    fontFamily: "Kufam",
                    fontSize: 17,
                  ),
                ),
                trailing: IconButton(
                    icon: Icon(
                      Icons.message_outlined,
                      color: Color(0xFF504682),
                    ),
                    onPressed: () {}),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/munna.jpg"),
                ),
                title: Text(
                  "Fahim  Muntashir",
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF393949)),
                ),
                subtitle: Text(
                  "BSc in Computer Science and Engineering, North South University (NSU)",
                  style: TextStyle(
                      color: Color(0xFF440544),
                      fontFamily: "Kufam",
                      fontSize: 17),
                ),
                trailing: IconButton(
                    icon: Icon(
                      Icons.message_outlined,
                      color: Color(0xFF504682),
                    ),
                    onPressed: () {}),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "We Are The Geeks of RippleBee ❤️",
                style: TextStyle(
                  color: Color(0xFF785978),
                  fontSize: 16,
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}