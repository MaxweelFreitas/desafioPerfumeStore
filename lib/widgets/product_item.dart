import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String title;
  final String factoryName;
  final String picture;
  final double price;
  final bool isFavorite;
  final int discount;
  final int reviewNumber;
  final Function onTap;

  ProductItem({
    Key key,
    this.title,
    this.picture,
    this.price,
    this.isFavorite = false,
    this.discount,
    this.onTap,
    this.factoryName,
    this.reviewNumber,
  }) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              //CARD background
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: size.height * 0.333,
                width: size.width * 0.388,
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

              //LikeIcon
              Positioned(
                top: 0,
                right: 8,
                child: Container(
                  height: size.height * 0.062,
                  width: size.width * 0.111,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )),
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.favorite,
                    color: widget.isFavorite ? Colors.red : Colors.black,
                  ),
                ),
              ),

              //Insert perfume in center of container
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: size.height * 0.333,
                width: size.width * 0.388,
                child: Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.062),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    //Container de shadow effect
                    child: Image.network(
                      widget.picture,
                      height: size.height * 0.203,
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Title
          Container(
            margin:
                EdgeInsets.only(left: 8, top: size.height * 0.025, bottom: 8),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Price
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '€ ' + widget.price.toString(),
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF59A05E)),
            ),
          ),
        ],
      ),
    );
  }
}
