import 'package:flutter/material.dart';
import 'package:nutrisi_app/ui/shared/text_style.dart';

class DetailFood extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final String price;

  DetailFood(this.imgPath, this.foodName, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4963CC),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  foodName,
                  style: kTitleApp,
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        Hero(
                            tag: imgPath,
                            child: Image(
                              image: AssetImage(imgPath),
                              fit: BoxFit.fill,
                              height: 300.0,
                              width: 150.0,
                            )),
                        Text(
                          foodName,
                          style: kFoodName,
                        ),
                        Text(
                          price,
                          style: kTitleApp,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
