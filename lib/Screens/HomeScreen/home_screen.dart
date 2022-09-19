import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:toters/Screens/ResturantsScreen/restueant_screen.dart';

import '../../../Data/data.dart';
import '../MapScreen/map_screen.dart';

class TotersHome extends StatefulWidget {
  const TotersHome({Key? key}) : super(key: key);

  @override
  State<TotersHome> createState() => _TotersHomeState();
}

class _TotersHomeState extends State<TotersHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        leadingWidth: 100,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.tune,
              color: Colors.black54,
              size: 32,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
              size: 32,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "توصيل الى",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black87,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MapPage()));
                      },
                      child: Text(
                        "بيروت, لبنان",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 15,
        ),
        child: ListView(
          children: [
            buildLoginRow(),
            buildSlider(),
            buildTypesSection(),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                top: 10,
              ),
              color: lightGreyColor,
            ),
            buildSpecialsText(),
            buildSpecialsSlider(),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                top: 10,
              ),
              color: lightGreyColor,
            ),
            buildSpecialsSlider(),
          ],
        ),
      ),
    );
  }

  Widget buildLoginRow() {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: 2,
      ),
      padding: EdgeInsets.only(left: 0, right: 0, bottom: 2, top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            " ! سجل الدخول باستخدام تطبيق توترز و استمتع بمزايا حصرية",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.arrow_back,
            color: Colors.green,
            size: 16,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }

  Widget buildSlider() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(3),
        child: ImageSlideshow(
          indicatorColor: Colors.white,
          indicatorBackgroundColor: Colors.grey,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.network(
              resImg1,
              fit: BoxFit.cover,
            ),
            Image.network(
              resImg2,
              fit: BoxFit.cover,
            ),
            Image.network(
              resImg3,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTypesSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTypesColumn(dietDish, "دايت فوود", true),
            buildTypesColumn(resturant, "المطاعم", true),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTypesColumn(nuts, "الكرزات", false),
            buildTypesColumn(coffee, "البن و القهوة", false),
            buildTypesColumn(flowers, "الزهور", false),
          ],
        ),
      ],
    );
  }

  Widget buildTypesColumn(String typeImage, String typeText, bool isThree) {
    return Container(
      margin: EdgeInsets.all(
        MediaQuery.of(context).size.width * 0.025,
      ),
      padding: isThree
          ? EdgeInsets.all(
              MediaQuery.of(context).size.width * 0.035,
            )
          : EdgeInsets.all(
              MediaQuery.of(context).size.width * 0.025,
            ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 3,
              color: greyColor,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.width * 0.2,
            margin: EdgeInsets.only(
              left: 5,
              right: 5,
              bottom: 3,
              top: 2,
            ),
            decoration: BoxDecoration(
              color: lightGreyColor,
              image: DecorationImage(
                  image: NetworkImage(typeImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Text(
            typeText,
            style:
                TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget buildSpecialsText() {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 5, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "! جرب المطاعم الجديدة المميزة مع مجموعة وجبات رائعة",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }

  Widget buildSpecialsSlider() {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildSpecialsColumn(resImg1, 1, name1, description1, min1, max1,
                  rate1, rateNum1, commName1, commRate1, comment1),
              buildSpecialsColumn(resImg2, 2, name2, description2, min2, max2,
                  rate2, rateNum2, commName2, commRate2, comment2),
              buildSpecialsColumn(resImg3, 3, name3, description3, min3, max3,
                  rate3, rateNum3, commName3, commRate3, comment3),
            ],
          ),
        ));
  }

  Widget buildSpecialsColumn(
      String image,
      int hours,
      String resNam,
      String desc,
      int min,
      int max,
      double rat,
      int ratCount,
      String comtNam,
      double comtRat,
      String comt) {
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
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResturantPage(
                            resName: resNam,
                            resDescreption: desc,
                            resImage: image,
                            minDeliver: min,
                            maxDeliver: max,
                            rate: rat,
                            ratingsNum: ratCount,
                            commentName: comtNam,
                            commentRate: comtRat,
                            comment: comt)));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    width: 360,
                    height: 180,
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 20,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 32,
                    )),
                Positioned(
                  left: 20,
                  bottom: -10,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 5,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 5,
                              color: lightGreyColor)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "$hours",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          "س",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                resNam,
                style: TextStyle(fontSize: 18, color: lightBlackColor),
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
                " فطور \$\$",
                style: TextStyle(fontSize: 16, color: lightBlackColor),
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildRow(
                "اكسب نقاط",
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.blue,
                  size: 16,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              buildRow(
                "4.9",
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 16,
                ),
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }

  Widget buildRow(
    String text,
    Icon icon,
  ) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: lightGreyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          icon,
        ],
      ),
    );
  }
}
