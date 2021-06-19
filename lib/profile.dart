import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moeez_app/next_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isComplete = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
        child: CupertinoPageScaffold(
      child: Stack(children: [
        Column(
          children: <Widget>[
            Container(
              height: 300,
              width: w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Color(0xffafdae2), Color(0xff95cbd6)]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.bars,
                      size: 50,
                      color: Color(0xffd9f4fa),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 28.0, bottom: 30),
                          child: Icon(
                            CupertinoIcons.plus,
                            size: 70,
                            color: Color(0xffa7d0d7),
                          ),
                        ),
                        Text(
                          "ALHOSN",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //body
        Positioned(
            top: h * 0.25,
            width: w,
            child: SingleChildScrollView(
              child: isComplete
                  ? Container(
                      height: h,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 28.0, left: 20, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "MOHAMED EISSA SULTAN",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 14,
                                            color: Color(0xff484f63),
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Icon(
                                        Icons.help_outline,
                                        size: 20,
                                        color: Color(0xffdcdcdc),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "EISSA ALHAMELI",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Color(0xff484f63),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "784-1976-5175479-4",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Color(0xff979fb6),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.25,
                                ),
                                SpinKitFadingCircle(
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                                SizedBox(
                                  height: h * 0.169,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "ADD USER",
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Color(0xff78b5c3),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 28.0, left: 20, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                    child: Text(
                                      "MOHAMED EISSA SULTAN",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 14,
                                          color: Color(0xff484f63),
                                          fontWeight: FontWeight.normal),
                                    ),
                                    onTap: () {
                                      load_data();
                                    }),
                                Icon(
                                  Icons.help_outline,
                                  size: 20,
                                  color: Color(0xffdcdcdc),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                    child: Text(
                                      "EISSA ALHAMELI",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Color(0xff484f63),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        isComplete = true;
                                      });
                                      load_data();
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "784-1976-5175479-4",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Color(0xff979fb6),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "ADD USER",
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Color(0xff78b5c3),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ))
      ]),
      backgroundColor: Colors.white,
    ));
  }

  load_data() {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 300),
              child: NextScreen()));
    });
    // Timer(Duration(seconds: 8), onDoneLoading);
  }

  // onDoneLoading() async {
  //   Navigator.of(this.context)
  //       .pushReplacement(MaterialPageRoute(builder: (context) => NextScreen()));
  // }
}
