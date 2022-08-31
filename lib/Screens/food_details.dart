import 'package:flutter/material.dart';
import 'package:toters/Data/data.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  String redioItem = '';
  bool val1 = true;
  bool val2 = false;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  IconButton(
          icon: Icon(Icons.arrow_back_ios,  color: Colors.black,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Icon(
            Icons.share,
            color: Colors.black,
            size: 32,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.black,
            size: 32,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://developns.ca/wp-content/uploads/2021/04/assorted-indian-recipes-food-various_79295-7226.jpg"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken Mandiy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "mandiy,jxndcvkjxn nhjgjh hjbjb kjhhl khsd",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "IQD 12,000",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.2),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Portion",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    tileColor: Colors.grey.withOpacity(0.2),
                    activeColor: primaryColor,
                    title: Text(
                      "Half chicken",
                      style: TextStyle(fontSize: 16),
                    ),
                    value: "half",
                    groupValue: redioItem,
                    onChanged: (val) {
                      setState(() {
                        redioItem = "$val";
                      });
                    }),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    tileColor: Colors.grey.withOpacity(0.2),
                    activeColor: primaryColor,

                    title: Text(
                      "Whole chicken",
                      style: TextStyle(fontSize: 16),
                    ),
                    value: "whole",
                    groupValue: redioItem,
                    onChanged: (val) {
                      setState(() {
                        redioItem = "$val";
                      });
                    }),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Portion",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                CheckboxListTile(
                    value: val1,
                    onChanged: (val) {
                      setState(() {
                        val1 = val!;
                      });
                }),
                SizedBox(
                  height: 20,
                ),
                CheckboxListTile(
                    value: val2,
                    onChanged: (val) {
                      setState(() {
                        val2 = val!;
                      });
                    }),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      counter ++;
                    });
                  },
                  child: Container(width: 20, height: 20,child: Text("+")),),
                Container(child: Text("$counter")),
                GestureDetector(   onTap: () {
                  setState(() {
                    counter --;
                  });
                },
                  child: Container(width: 20, height: 20,child: Text("+")),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
