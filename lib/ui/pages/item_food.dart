part of 'pages.dart';

class ItemFood extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final String price;

  ItemFood(this.imgPath, this.foodName, this.price);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, PageRouteBuilder(
              fullscreenDialog: true,
              transitionDuration: Duration(milliseconds: 1000),
              pageBuilder: (context, animation, secondAnimation){
                return DetailFood(imgPath, foodName, price);
          }, transitionsBuilder: (context, animation, secondAnimation, child){
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          }));
        },
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
                        fit: BoxFit.contain,
                        height: 75.0,
                        width: 75.0,
                      )),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Hero(
                        tag: foodName,
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            foodName,
                            style: kFoodName,
                          ),
                        ),
                      ),
                      Text(
                        price,
                        style: kFoodSubtitle,
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.add), color: Colors.black, onPressed: () {})
          ],
        ),
      ),
    );
  }
}
