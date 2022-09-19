import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:http/http.dart';
import 'package:toters/Data/data.dart';

import '../BottomNavigationScreen/bottom_navigation_bar_screen.dart';

class SplashAdvertisementPage extends StatefulWidget {
  const SplashAdvertisementPage({Key? key}) : super(key: key);

  @override
  State<SplashAdvertisementPage> createState() =>
      _SplashAdvertisementPageState();
}

class _SplashAdvertisementPageState extends State<SplashAdvertisementPage> {
  List<Widget> advertisements = [];
  List<String> titles = [];
  List<String> texts = [];
  List<String> images = [];

  Future getData() async{
    var url = Uri.parse("http://localhost:4000/splashadvertisements");
    Response response = await get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    for (int i=0; i<list1.length; i++){
      setState(() {
        for(int i = 0; i < list1.length; i ++) {
          titles.add(list1[i]['splash_advertisement_title']);
          texts.add(list1[i]['splash_advertisement_text']);
          images.add(list1[i]['splash_advertisement_image_id']);
        }
        print(titles);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    getData();

    advertisements = [
      buildAdvertisement("From restaurants to your doorstep",
          "Whatever szdxfcgvbh jcknfcl udhfiuhjviudxj ujvdhiufvhdkj kjbhdkjhsiud shgfisuf kushfiudhrfi nckjsh",
          "https://i.postimg.cc/yY915GW6/order1-removebg-preview.png"),
      buildAdvertisement("From restaurants to your doorstep",
          "Whatever szdxfcgvbh jcknfcl udhfiuhjviudxj ujvdhiufvhdkj kjbhdkjhsiud shgfisuf kushfiudhrfi nckjsh",
          "https://i.postimg.cc/yY915GW6/order1-removebg-preview.png"),
      buildAdvertisement("From restaurants to your doorstep",
          "Whatever szdxfcgvbh jcknfcl udhfiuhjviudxj ujvdhiufvhdkj kjbhdkjhsiud shgfisuf kushfiudhrfi nckjsh",
          "https://i.postimg.cc/yY915GW6/order1-removebg-preview.png"),
      buildAdvertisement("From restaurants to your doorstep",
          "Whatever szdxfcgvbh jcknfcl udhfiuhjviudxj ujvdhiufvhdkj kjbhdkjhsiud shgfisuf kushfiudhrfi nckjsh",
          "https://i.postimg.cc/yY915GW6/order1-removebg-preview.png"),

    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              ImageSlideshow(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                indicatorColor: Colors.white,
                indicatorBackgroundColor: Colors.white,
                onPageChanged: (value) {
                  debugPrint('Page changed: $value');
                },
                autoPlayInterval: 8000,
                isLoop: true,
                children: advertisements,
              ),
              Positioned(
                top: 40,
                right: 20,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.language,
                        size: 30,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "En",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BottomBar()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAdvertisement(String title, String text, String image) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Image.network(image, width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
