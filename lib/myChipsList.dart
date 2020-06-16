import 'package:flutter/material.dart';

List<String> _safety = [
  "Airbags",
  "Electronic Brakeforce..",
  "Passenger Airbags",
  "Brake Assist",
  "Hill Assist",
  "Electronic Stability ..",
  "ABS",
  "Tractional Control",
  "Engine Immobilizer",
  "Power Lock",
  "Central Locking",
  "Child Safety",
  "Automatic Headlamps",
  "Side Airbags",
  "Turn Indicators On ORVM",
  "Rain Sensing Wipers",
  "Headlamp Beam Adjuster"
];

class MyChipsList extends StatelessWidget {
  List<String> myChipList;
  MyChipsList(this.myChipList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 16),
      child: ListView.builder(
        itemCount: myChipList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return FeatureChips(myChipList[index]);
        },
      ),
    );
  }
}

List<FeatureChips> myWidgetList() {
  List<FeatureChips> newList = new List();
  for (var i = 0; i < _safety.length; i++) {
    newList.add(FeatureChips(_safety[i]));
  }
  return newList;
}

class FeatureChips extends StatelessWidget {
  String myFeature;
  FeatureChips(this.myFeature);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0),
      child: Chip(
        backgroundColor: Colors.grey[100],
        avatar: CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.done,
            color: Colors.white,
            size: 15,
          ),
        ),
        label: Text(
          myFeature,
          style: TextStyle(fontSize: 10, color: Colors.black),
        ),
      ),
    );
  }
}

