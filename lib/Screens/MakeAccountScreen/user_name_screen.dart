import 'package:flutter/material.dart';

import '../../Data/data.dart';
import 'password_screen.dart';

class UserNamePage extends StatefulWidget {
  const UserNamePage({Key? key}) : super(key: key);

  @override
  State<UserNamePage> createState() => _UserNamePageState();
}

class _UserNamePageState extends State<UserNamePage> {
  bool isFilled = false;
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter Your Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _firstNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First Name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _lastNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Last Name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  //TODO make suitable function ....
                  if(!_firstNameController.text.isEmpty && !_lastNameController.text.isEmpty) {
                    isFilled = !isFilled;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PasswordPage()));
                  }
                });
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: isFilled ? primaryColor : lightGreyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
