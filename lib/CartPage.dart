import 'package:flutter/material.dart';
import "style.dart";

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: cartPage(),
    );
  }
}

class cartPage extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: blue,
                                image: DecorationImage(
                                    image: AssetImage("asset/images/hotelBig.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          icon: Icon(Icons.arrow_back, color: Colors.white)
                                      ),
                                      IconButton(
                                          icon: Icon(Icons.search, color: Colors.white)
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 200),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 20),
                                            Text("Yoshimasa Susi", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20
                                            ),),
                                            SizedBox(height: 10),
                                            Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.star, color: Colors.yellow),
                                                  Icon(Icons.star, color: Colors.yellow),
                                                  Icon(Icons.star, color: Colors.yellow),
                                                  Icon(Icons.star, color: Colors.yellow),
                                                  Icon(Icons.star, color: Colors.yellow),
                                                ]
                                            ),
                                            Text("250 Reviews", style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15
                                            ),)
                                          ]
                                      ),
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white
                                          ),
                                          child: Center(
                                              child: Icon(Icons.favorite, color: Colors.redAccent, size: 30)
                                          )
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Text("Lorem ipsum is dummy text use for printing", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),)
                                ],
                              )
                          ),
                          SizedBox(height: 15,),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.end,
                                    children: [
                                      Text("Today Special", style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700
                                      ),),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.symmetric(horizontal: 20),
                                            height: 0.5,
                                            color: Colors.grey
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  // placesWidget("food1", "Sushi Platter"),
                                  // placesWidget("food2", "Sushi Platter"),
                                  // placesWidget("food3", "Sushi Platter"),
                                  SizedBox(height:20,),
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.end,
                                    children: [
                                      Text("Dishes", style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700
                                      ),),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.symmetric(horizontal: 20),
                                            height: 0.5,
                                            color: Colors.grey
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          // disWidget("sushi", "Row sushi", "Sushi served in a row"),
                                          // disWidget("sushi2", "Row sushi", "Sushi served in a row"),
                                          // disWidget("sushi3", "Row sushi", "Sushi served in a row"),
                                          // disWidget("sushi4", "Row sushi", "Sushi served in a row"),
                                        ],
                                      )
                                  )
                                ],
                              )
                          )
                        ]
                    )
                )
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25)),
                                        color: greenBtn
                                    ),
                                    child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.add_shopping_cart,
                                              color: Colors.white,
                                              size: 18,),
                                            Text("CART", style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700
                                            ),)
                                          ],
                                        )
                                    )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                                  color: greenBtn.withOpacity(0.7),
                                ),
                              )
                            ]
                        )
                      ]
                  )
              ),
            )
          ],
        )
    );;
  }
}

