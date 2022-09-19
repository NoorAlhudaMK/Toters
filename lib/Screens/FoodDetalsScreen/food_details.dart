import 'package:flutter/material.dart';
import 'package:toters/Data/data.dart';

class FoodDetails extends StatefulWidget {
  final String mealName;
  final String mealImage;
  final double mealPrice;

  FoodDetails({
    required this.mealName,
    required this.mealImage,
    required this.mealPrice,
  });

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  String redioItem = '';
  bool val1 = true;
  bool val2 = false;
  int counter = 1;
  late double totalPrice;
  List<String> adds = ["بيض", "لحم مقدد", "جبنة", "ثومية"];
  List<bool> addsVals = [
    false,
    false,
    false,
    false,
  ];
  List<String> delets = ["خس", "طماطم", "مخلل", "بصل"];
  List<bool> deletsVals = [
    false,
    false,
    false,
    false,
  ];

  @override
  void initState() {
    totalPrice = widget.mealPrice;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.cancel_outlined,
            color: Colors.black,
            size: 32,
          ),
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
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.mealImage),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget.mealName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "mandiy,jxndcvkjxn nhjgjh hjbjb",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${widget.mealPrice} د.ع",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.2),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "الاضافات",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 20,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          itemCount: adds.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CheckboxListTile(
                                checkColor: Colors.white,
                                title: Text(adds.elementAt(index)),
                                value: addsVals.elementAt(index),
                                onChanged: (value) {
                                  setState(() {
                                    addsVals[index] = value!;
                                  });
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.2),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "ازالة مكونات",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 20,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          itemCount: delets.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CheckboxListTile(
                                checkColor: Colors.white,
                                title: Text(delets.elementAt(index)),
                                value: deletsVals.elementAt(index),
                                onChanged: (value) {
                                  setState(() {
                                    deletsVals[index] = value!;
                                  });
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      counter++;
                      totalPrice += widget.mealPrice;
                    });
                  },
                  child: Icon(Icons.add),
                ),
                Spacer(),
                Container(
                  child: Text(
                    "$counter",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (counter > 1) {
                        counter--;
                        totalPrice -= widget.mealPrice;
                      }
                    });
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  " د.ع $totalPrice ",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Spacer(),
                Text(
                  "أضف الى العربة",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Spacer(),
                Text(
                  "سلعة واحدة",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
