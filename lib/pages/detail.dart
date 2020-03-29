import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Detail extends StatefulWidget {
  final String title;
  final String factoryName;
  final String picture;
  final double price;
  final bool isFavorite;
  final int discount;

  Detail({
    Key key,
    @required this.title,
    @required this.factoryName,
    @required this.picture,
    @required this.price,
    this.isFavorite = false,
    this.discount,
  }) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var topSpace = MediaQuery.of(context).padding.top + kToolbarHeight;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //background
          Positioned(
            top: 0,
            child: Container(
              height: size.height - size.height * 0.2,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0XFF7AB05A), Color(0XFF458F52)],
                  stops: [0, 1],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
              ),
            ),
          ),

          //Img
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height,
              width: size.width,
              child: Padding(
                padding: EdgeInsets.only(top: topSpace),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    widget.picture,
                    height: size.height * 0.5,
                  ),
                ),
              ),
            ),
          ),

          //White card
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: size.height * 0.317,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  //scent name
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  //Factory name
                  Text(
                    widget.factoryName.toUpperCase(),
                    style: TextStyle(color: Color(0XFFD8D6D7)),
                  ),
                  //price and stars
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '€ ' + widget.price.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF59A05E),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '48 reviews',
                            style: TextStyle(
                                color: Color(0XFFD8D6D7), fontSize: 16),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star, color: Color(0XFFFFB77D)),
                              Icon(Icons.star, color: Color(0XFFFFB77D)),
                              Icon(Icons.star, color: Color(0XFFFFB77D)),
                              Icon(Icons.star, color: Color(0XFFFFB77D)),
                              Icon(Icons.star, color: Color(0XFFFFB77D)),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //Button bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * 0.098,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Icon(MdiIcons.shoppingOutline, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),

          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(context),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
