import 'package:flutter/material.dart';

import '../Data/data.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}














class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Noor Alhuda M.K.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding:
                      EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wallet_giftcard,
                        color: primaryColor,
                        size: 22,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Green",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "0 PIS",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: primaryColor,
                        size: 22,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildInfoContainer(
                          Icons.manage_accounts_outlined, "Profile", false),
                      buildInfoContainer(
                          Icons.headset_mic_outlined, "Support", false),
                      buildInfoContainer(
                          Icons.credit_card, "Payments", false),
                      buildInfoContainer(
                          Icons.language, "Language", true),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Toters Cash",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCashDetailRow(
                        Icons.wallet,
                        "Wallet",
                        true,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.add,
                        "Add funds",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.arrow_upward_rounded,
                        "Send funds",
                        false,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Promotions",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCashDetailRow(
                        Icons.credit_card,
                        "Credits",
                        true,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.send,
                        "Add promo code",
                        false,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account Details",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCashDetailRow(
                        Icons.notifications_none_outlined,
                        "Notification",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.location_on_outlined,
                        "Addresses",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.favorite_border,
                        "Favorite",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.credit_card,
                        "Payments",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.account_circle_outlined,
                        "Refer a friend",
                        false,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help center",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCashDetailRow(
                        Icons.headset_mic_outlined,
                        "Get Support",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.chat_outlined,
                        "Support Tickets",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.brush,
                        "Legal",
                        false,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      buildCashDetailRow(
                        Icons.circle_outlined,
                        "FAQ",
                        false,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Sign out",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildInfoContainer(IconData icon, String text, bool lang) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        lang
            ? Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightGreyColor,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.black87,
                      size: 28,
                    ),
                  ),
                  Positioned(
                    top: -1,
                    right: -1,
                    child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            "En",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ],
              )
            : Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: lightGreyColor,
                ),
                child: Icon(
                  icon,
                  color: Colors.black87,
                  size: 28,
                ),
              ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget buildCashDetailRow(IconData icon, String text, bool cash) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.black54,
          size: 28,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
        Spacer(),
        cash
            ? Text(
                "IQD 0",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Container(),
      ],
    );
  }
}
