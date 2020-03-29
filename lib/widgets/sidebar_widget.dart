import 'package:flutter/material.dart';

class SidebarWidget extends StatefulWidget {
  @override
  _SidebarWidgetState createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return //SIDEBAR
      Container(
        height: size.height * 0.333,
        margin: EdgeInsets.only(right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RotatedBox(
              quarterTurns: 3,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'SUGGESTED',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0XFF59A05E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'POPULAR',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0XFFD8D6D7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}
