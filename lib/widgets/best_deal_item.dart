import 'package:flutter/material.dart';

class BestDealItem extends StatelessWidget {
  final String title;
  final String factoryName;
  final String picture;
  final double price;
  final bool isFavorite;
  final int discount;
  BestDealItem({Key key, this.title, this.factoryName, this.picture, this.price, this.isFavorite, this.discount}):super(key:key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.125,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0XFFD8D6D7)),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        //background
        Positioned(
          top: 10,
          bottom: 10,
          left: 26,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.098,
                width: size.width * 0.160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    colors: [Color(0XFF8BB957), Color(0XFF59A463)],
                    stops: [0, 1],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.098,
                width: size.width * 0.160,
                child: Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.011),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.network(
                      picture,
                      height: size.height * 0.075,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //Discount
        Positioned(
          right: 16,
          bottom: 0,
          child: Container(
            height: size.height * 0.052,
            width: size.width * 0.129,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: discount == 0?Colors.transparent:Color(0XFFFFB77D),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Text(
              "-"+discount.toString() + "%",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        //TextInfos
        Positioned(
          top: 0,
          bottom: 0,
          left: size.width * 0.3,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('€ '+price.toString(),style: TextStyle(fontSize: 18,color: Color(0XFF59A05E))),
            ],
          ),
        )
      ],
    );
  }
}
