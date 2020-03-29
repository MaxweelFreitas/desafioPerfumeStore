import 'package:desafioperfume/models/Product.dart';
import 'package:desafioperfume/pages/detail.dart';
import 'package:desafioperfume/widgets/best_deal_item.dart';
import 'package:desafioperfume/widgets/product_item.dart';
import 'package:desafioperfume/widgets/scent_list.dart';
import 'package:desafioperfume/widgets/sidebar_widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<ProductModel> listProduct = [
      ProductModel(
        id: 1,
        title: 'Chanel Coco Noir',
        factoryName: '',
        picture: 'https://i.imgur.com/J2wBTng.png',
        price: 99.50,
        isFavorite: false,
        discount: 0,
      ),
      ProductModel(
        id: 2,
        title: 'Orange Sanguine Atelier',
        factoryName: '',
        picture: 'https://i.imgur.com/aAjZPW8.png',
        price: 121.00,
        isFavorite: false,
        discount: 0,
      ),
      ProductModel(
        id: 3,
        title: 'My Burberry Black',
        factoryName: '',
        picture: 'https://i.imgur.com/NHi23VR.png',
        price: 89.00,
        isFavorite: false,
        discount: 20,
      ),
      ProductModel(
        id: 1,
        title: 'kayali Elixir 11',
        factoryName: 'Huda Beauty',
        picture: 'https://i.imgur.com/zhqehXD.png',
        price: 118.00,
        isFavorite: false,
        discount: 0,
      ),
    ];

    ProductModel productModel;

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
              icon: Icon(MdiIcons.shoppingOutline, color: Colors.black),
              onPressed: () {})
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Title
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 16, bottom: 20),
            child: Text(
              'Perfume',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          //Scents Carousel
          ScentList(),
          //ListOfCardProducts
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SidebarWidget(),
              //CardLayout
              Expanded(
                child: Container(
                  height: size.height * 0.42,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: listProduct.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        productModel = listProduct[index];
                        return ProductItem(
                          title: productModel.title,
                          picture: productModel.picture,
                          price: productModel.price,
                          isFavorite: productModel.isFavorite,
                          discount: productModel.discount,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(
                                  title: productModel.title,
                                  factoryName: productModel.factoryName,
                                  picture: productModel.picture,
                                  price: productModel.price,
                                  isFavorite: productModel.isFavorite,
                                  discount: productModel.discount,
                                ),
                              ),
                            );
                          },
                        );
                      }),
                ),
              ),
            ],
          ),

          //BestDeal title
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: 16, vertical: size.height * 0.05),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Best deals',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                //BestDeals
                Row(
                  children: <Widget>[
                    Text(
                      'ALL',
                      style: TextStyle(color: Color(0XFFD8D6D7)),
                    ),
                    Icon(MdiIcons.chevronRightCircleOutline, color: Color(0XFFD8D6D7)),
                  ],
                ),
              ],
            ),
          ),

          BestDealItem(
            title: listProduct[2].title,
            factoryName: listProduct[2].factoryName,
            picture: listProduct[2].picture,
            price: listProduct[2].price,
            isFavorite: listProduct[2].isFavorite,
            discount: listProduct[2].discount,
          ),
        ],
      ),
    );
  }
}
