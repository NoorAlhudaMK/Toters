import 'package:flutter/material.dart';
import 'package:toters/Data/data.dart';

class DelegatePage extends StatefulWidget {
  const DelegatePage({Key? key}) : super(key: key);

  @override
  State<DelegatePage> createState() => _DelegatePageState();
}

class _DelegatePageState extends State<DelegatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.05,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "We deliver anything that fits on a motorbike !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                //bottom: MediaQuery.of(context).size.height * 0.025,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Request a butler to:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            buildDeliveryContainer(
                "Deliver your stuff",
                "e.g. You forgot your keys at home and need to get them delivered to the office",
                "assets/images/delivery_address.png"),
            buildDeliveryContainer(
                "Buy something",
                "Didn't find what you were looking for at our stores? Our butlers can buy whatever you need from your store of choice.",
                "assets/images/ordering.png"),
          ],
        ),
      ),
    );
  }

  Widget buildDeliveryContainer(String title, String subTitle, String image) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height * 0.18,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
        top: MediaQuery.of(context).size.height * 0.025,
      ),
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        color: lightGreyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            //height: MediaQuery.of(context).size.width * 0.3,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.025,
              bottom: 5,
              left: 0,
              right: 0,
            ),
            padding: EdgeInsets.only(
              top: 5,
              bottom: 5,
              left: 0,
              right: 0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * 0.22,
            height: MediaQuery.of(context).size.width * 0.22,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: primaryColor,
            size: 18,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.025,
          ),
        ],
      ),
    );
  }
}
