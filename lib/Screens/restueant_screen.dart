import 'package:flutter/material.dart';
import 'package:toters/Data/data.dart';

import 'food_details.dart';

class ResturantPage extends StatefulWidget {
  final String resName;
  final String resDescreption;
  final String resImage;
  final int minDeliver;
  final int maxDeliver;
  final double rate;
  final int ratingsNum;
  final String commentName;
  final double commentRate;
  final String comment;

  ResturantPage(
      {required this.resName,
      required this.resDescreption,
      required this.resImage,
      required this.minDeliver,
      required this.maxDeliver,
      required this.rate,
      required this.ratingsNum,
      required this.commentName,
      required this.commentRate,
      required this.comment});

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,),
            onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: lightGreyColor,
                    image: DecorationImage(
                      image: NetworkImage(widget.resImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -15,
                  right: 20,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: lightGreyColor,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.minDeliver} - ${widget.maxDeliver}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "mins",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 10,
                left: 10,
                top: 15,
                bottom: 5,
              ),
              child: Text(
                widget.resName,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 10,
                left: 10,
                bottom: 25,
              ),
              child: Text(
                widget.resDescreption,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildOffersButton(
                    Colors.redAccent.withOpacity(0.1),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                    "10 % cashback",
                    Colors.redAccent),
                buildOffersButton(
                    Colors.blue.withOpacity(0.1),
                    Icon(
                      Icons.refresh,
                      color: Colors.blue,
                      size: 18,
                    ),
                    "Earn points",
                    Colors.blue),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${widget.rate}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 46,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: lightGreyColor,
                                size: 28,
                              ),
                            ],
                          ),
                          Text(
                            "Based on ${widget.ratingsNum} ratings",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20,),
              child: Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.commentName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 10,
                left: 10,
                bottom: 10,
              ),
              child: Text(
                widget.comment,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 50, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://developns.ca/wp-content/uploads/2021/04/assorted-indian-recipes-food-various_79295-7226.jpg"
                        ),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    child: Text("Show details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetails()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOffersButton(
      Color btnBgColor, Icon btnIcon, String text, Color textColor) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: btnBgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          btnIcon,
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}