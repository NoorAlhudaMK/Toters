import 'package:flutter/material.dart';

import '../Data/data.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 20,
          bottom: TabBar(
            unselectedLabelColor: primaryColor,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Past Order",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Upcoming",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          elevation: 0,
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text(
                "You do not have any pat orders",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/empty_basket.png",
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                Text("You do not have any pat orders"),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
