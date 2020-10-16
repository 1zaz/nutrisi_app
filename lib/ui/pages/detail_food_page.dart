part of 'pages.dart';

class DetailFood extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final String price;

  DetailFood(this.imgPath, this.foodName, this.price);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff4963CC),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: imgPath,
              child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                      image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.contain,
                  ),),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: kTitleApp,
                  ),
                  SizedBox(height: 16,),
                  Text(
                    price,
                    style: kFoodName,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
