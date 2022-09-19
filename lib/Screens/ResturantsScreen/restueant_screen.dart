import 'package:flutter/material.dart';
import 'package:toters/Data/data.dart';
import 'package:toters/Screens/MakeAccountScreen/user_name_screen.dart';

import '../FoodDetalsScreen/food_details.dart';

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
  bool isFavorite = false;
  Color typeContainerColor = Colors.white;
  Color typeTextColor = primaryColor;
  TextEditingController _phoneNumberController = TextEditingController();
  List<String> typesList = [
    "شاورما لحم",
    "شاورما دجاج",
    "بوكسات الشاورما",
    "سندويشات",
    "شاورما لحم",
    "شاورما دجاج",
    "بوكسات الشاورما",
    "سندويشات",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                      padding: EdgeInsets.only(
                          left: 20, right: 20, bottom: 10, top: 10),
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
                  Positioned(
                    top: 10,
                    right: 10,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 28,
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showAlertDialog(context);
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                              size: 28,
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: isFavorite
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.redAccent,
                                    size: 28,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                          ),
                        ),
                        Spacer(
                          flex: 6,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pop();
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 28,
                            ),
                          ),
                        ),
                      ],
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
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 20,
                  bottom: 10,
                ),
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
              /*Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
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
              ),*/
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                color: greyColor,
              ),
              buildPopularMealsSlider(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                color: greyColor,
              ),
              buildTypesSlider(),
              buildMealsSlider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppBarIcon(IconData icon, int functionCall) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: Colors.black,
          size: 28,
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

  Widget buildPopularMealsSlider() {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildPopularMealColumn(resImg1, name1, 3500),
              buildPopularMealColumn(resImg2, name2, 4500),
              buildPopularMealColumn(resImg3, name3, 5000),
            ],
          ),
        ));
  }

  Widget buildPopularMealColumn(String image, String mealNam, double price) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: lightGreyColor,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                mealNam,
                style: TextStyle(fontSize: 16, color: lightBlackColor),
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$price د.ع",
                style: TextStyle(fontSize: 14, color: primaryColor),
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTypesSlider() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: typesList.length,
        itemBuilder: (BuildContext context, int index) {
          return buildTypeContainer(typesList.elementAt(index));
        },
      ),
    );
  }

  Widget buildTypeContainer(String text) {
    return GestureDetector(
      onTap: () {
        Color swap;
        setState(() {
          swap = typeContainerColor;
          typeContainerColor = typeTextColor;
          typeTextColor = swap;
        });
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: typeContainerColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: typeTextColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMealsSlider() {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              buildMealRow(resImg1, name1, mealPrice1),
              buildMealRow(resImg2, name2, mealPrice2),
              buildMealRow(resImg3, name3, mealPrice3),
            ],
          ),
        ));
  }

  Widget buildMealRow(String image, String mealNam, double price) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mealNam,
                  style: TextStyle(fontSize: 16, color: lightBlackColor),
                ),
                Text(
                  "juhcbfjfkbgf;glbmgvkjncjmvx;dkdpokgjoifjgpk",
                  style: TextStyle(fontSize: 14, color: lightBlackColor),
                ),
                Text(
                  "$price د.ع",
                  style: TextStyle(fontSize: 14, color: primaryColor),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FoodDetails(
                          mealName: mealNam,
                          mealImage: image,
                          mealPrice: price,
                        ),
                ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    color: lightGreyColor,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button  
    Widget okButton = GestureDetector(
      child: Text("OK", style: TextStyle(color: primaryColor),),
      onTap: () {
        if (_phoneNumberController.text.length >= 10) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => UserNamePage()));
        }
        else {
          final snackBar = SnackBar(
            content: const Text('Enter valid number'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );

    // Create AlertDialog  
    AlertDialog alert = AlertDialog(
      title: Text("You have to create sccount first"),
      content: TextFormField(
        controller: _phoneNumberController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Phone Number",
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog  
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
