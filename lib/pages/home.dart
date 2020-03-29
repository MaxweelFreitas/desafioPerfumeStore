import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> scentNotes = [
      "",
      "Floral",
      "warm & spicy",
      "Bergamot",
      "Cedar",
      "Citrus",
      "Earthy Greens",
      "Fresh",
      "Fruity",
      "Jasmine",
      "Lemon",
      "Musk & Amber",
      "Patchouli",
      "Rose",
      "Vanilla",
      "Vetiver",
      "Woodsy",
      "Woody"
    ];
    //LoadScentNotesList
    var listViewScentNotes = ListView.builder(
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
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.short_text, color: Colors.black),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_basket, color: Colors.black),
              onPressed: () {})
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Title
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16),
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Perfume',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          //Carousel
          Container(
            margin: EdgeInsets.only(bottom: 25),
            height: size.height * 0.062,
            child: listViewScentNotes,
          ),
          //ListOfCardProducts
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: size.height * 0.333,
                margin: EdgeInsets.only(right: 10),
                child: Column(
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
              ),

              //CardLayout
              Stack(
                children: <Widget>[
                  Container(
                    height: size.height * 0.333,
                    width: size.width * 0.388,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [Color(0XFF8BB957), Color(0XFF59A463)],
                        stops: [0, 1],
                        begin: FractionalOffset.topLeft,
                        end: FractionalOffset.bottomRight,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: -0.1,
                    child: Container(
                      height: size.height * 0.062,
                      width: size.width * 0.111,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.favorite),
                    ),
                  ),
                  Positioned(
                    left: 0, right: 0,
                    bottom: size.height * 0.062,
                    child: Image.network(
                      'https://i.imgur.com/J2wBTng.png',
                      height: size.height * 0.203,
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
//              Container(
//                height: 20,
//                child: ListTile(
//                  title: Text('Chanel Coco Noir'),
//                  subtitle: Text('€ 99.50'),
//                ),
//              )
            ],
          ),
        ],
      ),
    );
  }
}
