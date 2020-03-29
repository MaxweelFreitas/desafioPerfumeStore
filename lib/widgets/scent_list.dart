import 'package:flutter/material.dart';

class ScentList extends StatefulWidget {
  @override
  _ScentListState createState() => _ScentListState();
}

class _ScentListState extends State<ScentList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> scentNotes = [
      "", "Floral", "warm & spicy", "Bergamot", "Cedar",
      "Citrus", "Earthy Greens", "Fresh", "Fruity", "Jasmine",
      "Lemon", "Musk & Amber", "Patchouli", "Rose", "Vanilla",
      "Vetiver", "Woodsy", "Woody"
    ];

    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: size.height * 0.062,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: scentNotes.length,
        itemBuilder: (context, index) {
          String scent = scentNotes[index];
          if (index == 0) {
            return Container(
              margin: EdgeInsets.only(left: 16, right: 5),
              child: RotatedBox(
                quarterTurns: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0XFF59A05E),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.tune, color: Colors.white),
                ),
              ),
            );
          } else {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0XFFD8D6D7)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  scent.toUpperCase(),
                  style: TextStyle(
                    color: Color(0XFF59A05E),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
