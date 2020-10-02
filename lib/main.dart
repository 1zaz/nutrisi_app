import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
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
                  'Healthy',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
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
                        _buildFoodItem('assets/plate1.png', 'Salmon Bowl', 'Rp.40.000'),
                        _buildFoodItem('assets/plate2.png', 'Spring Bowl', 'Rp.30.000'),
                        _buildFoodItem('assets/plate3.png', 'Steak Bowl', 'Rp.70.000'),
                        _buildFoodItem('assets/plate4.png', 'Mie Bowl', 'Rp.20.000'),
                        _buildFoodItem('assets/plate5.png', 'Tuna Bowl', 'Rp.100.000'),
                        _buildFoodItem('assets/plate6.png', 'Kakap Bowl', 'Rp.150.000'),
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

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Hero(
                      tag: imgPath,
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width: 75.0,
                      )),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.add), color: Colors.black, onPressed: () {}
                )
          ],
        ),
      ),
    );
  }
}
