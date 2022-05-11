import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/hotelrecep.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Best Hotels Ever', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    SizedBox(height: 20,),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search for hotels...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            //body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Business Hotels', style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/hotel1.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/hotel2.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/hotel3.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/hotel4.jpeg", title: "Hotel1"),
                        makeItem(image: "assets/images/hotel5.jpg", title: "Hotel1"),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text('Airport Hotels', style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/hotel5.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel4.jpeg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel3.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel2.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel1.jpg", title: "Hotel2"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Text('Resort Hotels', style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/hotel5.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel4.jpeg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel3.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel2.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/hotel1.jpg", title: "Hotel2"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.4),
                  ]
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
                  Icon(Icons.favorite, color: Colors.red,),
              ]
              ),
            ),
          ),

    );
  }
}
