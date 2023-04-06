import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Contact/Contact_Us.dart';
import 'package:multi_vendor/Edit%20Profile/Edit_Profile.dart';
import 'package:multi_vendor/Elements/Related_List_View.dart';
import 'package:multi_vendor/Elements/featured_list%20_view.dart';
import 'package:multi_vendor/New%20List/Add_New_List.dart';

class Profile_Picture extends StatelessWidget {
  const Profile_Picture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assests/pexels-pixabay-302769.jpg",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80)),
                    ),
                    height: MediaQuery.of(context).size.height / 1.6 - 150,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 30,
                        width: 30,
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 180, left: 10, right: 10),
                    child: SizedBox(
                      // color: Colors.green,
                      height: 400,
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(52),
                            ),
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 110),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 2),
                                      Text(
                                        "Steve Garrett",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        "Singapore, Golden Mile",
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.white),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "About",
                                        style: TextStyle(
                                            fontSize: 8, color: Colors.white),
                                      ),
                                      Text(
                                        "Text fill  today and enjoy the first month of premium benefits on\n us.Sign up today and enjoy the first month of premium benefits ",
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Rating",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            "Comments",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "566",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 180,
                                        height: 30,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder:
                                                      (BuildContext context) {
                                                return Edit_Profile();
                                              }));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xffFD9F00),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32))),
                                            child: Text(
                                              "Book Now",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      SizedBox(
                                        width: 70,
                                        height: 30,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder:
                                                      (BuildContext context) {
                                                return Add_New_List();
                                              }));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xffFFFFFF),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32))),
                                            child: SvgPicture.asset(
                                                "assests/heart.svg")),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            height: 30,
                                            width: 30,
                                            child: SvgPicture.asset(
                                              "assests/location.svg",
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "+84-99-9999-999",
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder:
                                                      (BuildContext context) {
                                                return Contact_Us();
                                              }));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              height: 30,
                                              width: 30,
                                              child: SvgPicture.asset(
                                                "assests/Call.svg",
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "www.passionui.com",
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            height: 30,
                                            width: 30,
                                            child: SvgPicture.asset(
                                              "assests/Mail box.svg",
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "+84-99-9999-999",
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "667 Garden Suite, United States",
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            // color: Colors.green,
                            height: 150,
                            width: 80,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assests/Profile Pic.jpg",
                                        )),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  height: 100,
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Text(
                                        "King Utah",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      Text(
                                        "Art & Humanities",
                                        style: TextStyle(
                                            fontSize: 9, color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 220,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32),
                                  topRight: Radius.circular(32)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "09:00 AM",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffACACAC)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Open Time",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffACACAC)),
                                    ),
                                    SizedBox(width: 5),
                                    SvgPicture.asset(
                                        "assests/Drop down arrow.svg"),
                                  ],
                                ),
                                Text(
                                  "18:00 PM",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffACACAC)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Monday",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffACACAC)),
                              ),
                              Container(
                                height: .05,
                                width: 200,
                                color: Color(0xff707070),
                              ),
                              Text(
                                "09:00 AM - 18:00 PM",
                                style: TextStyle(
                                    fontSize: 7, color: Color(0xffFD9F00)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tuesday",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffACACAC)),
                              ),
                              Container(
                                height: .05,
                                width: 200,
                                color: Color(0xff707070),
                              ),
                              Text(
                                "09:00 AM - 18:00 PM",
                                style: TextStyle(
                                    fontSize: 7, color: Color(0xffFD9F00)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Wednesday",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffACACAC)),
                              ),
                              Container(
                                height: .05,
                                width: 200,
                                color: Color(0xff707070),
                              ),
                              Text(
                                "09:00 AM - 18:00 PM",
                                style: TextStyle(
                                    fontSize: 7, color: Color(0xffFD9F00)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Thursday",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffACACAC)),
                              ),
                              Container(
                                height: .05,
                                width: 200,
                                color: Color(0xff707070),
                              ),
                              Text(
                                "09:00 AM - 18:00 PM",
                                style: TextStyle(
                                    fontSize: 7, color: Color(0xffFD9F00)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Friday",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffACACAC)),
                              ),
                              Container(
                                height: .05,
                                width: 200,
                                color: Color(0xff707070),
                              ),
                              Text(
                                "09:00 AM - 18:00 PM",
                                style: TextStyle(
                                    fontSize: 7, color: Color(0xffFD9F00)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sunday",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xffACACAC)),
                              ),
                              Container(
                                height: .05,
                                width: 120,
                                color: Color(0xff707070),
                              ),
                              Text(
                                "09:00 AM - 18:00 PM",
                                style: TextStyle(
                                    fontSize: 7, color: Color(0xffFD9F00)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date Established",
                              style: TextStyle(
                                  fontSize: 6, color: Color(0xffACACAC)),
                            ),
                            Text(
                              "Sep 15, 2023",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price Range",
                              style: TextStyle(
                                  fontSize: 6, color: Color(0xffACACAC)),
                            ),
                            Text(
                              "\$46.00 to \$93.00",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Featured",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff33393A),
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width - 10,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 5),
                    FeaturedList(
                        img: "assests/Coffee pic.jpg",
                        Svg_img: "assests/heart.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: "667 Garden Suite, United States"),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Coffee pic.jpg",
                        Svg_img: "assests/heart.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: "667 Garden Suite, United States"),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Coffee pic.jpg",
                        Svg_img: "assests/heart.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: "667 Garden Suite, United States"),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Coffee pic.jpg",
                        Svg_img: "assests/heart.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: "667 Garden Suite, United States"),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Coffee pic.jpg",
                        Svg_img: "assests/heart.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: "667 Garden Suite, United States"),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Coffee pic.jpg",
                        Svg_img: "assests/heart.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: "667 Garden Suite, United States"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Related",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff33393A),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width - 10,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 5),
                    RelestedListView(
                        img: "assests/Recent view 1.png",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5"),
                    SizedBox(width: 10),
                    RelestedListView(
                        img: "assests/Recent view 1.png",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5"),
                    SizedBox(width: 10),
                    RelestedListView(
                        img: "assests/Recent view 1.png",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5"),
                    SizedBox(width: 10),
                    RelestedListView(
                        img: "assests/Recent view 1.png",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5"),
                    SizedBox(width: 10),
                    RelestedListView(
                        img: "assests/Recent view 1.png",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5"),
                    SizedBox(width: 10),
                    RelestedListView(
                        img: "assests/Recent view 1.png",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
