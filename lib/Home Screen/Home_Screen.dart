import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Elements/List_view.dart';
import 'package:multi_vendor/Elements/event_cataloge.dart';
import 'package:multi_vendor/Profile%20Picture/profile_picture.dart';
import 'package:multi_vendor/Statistics/Statistic.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  bool isSwitched1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(80),
                bottomRight: Radius.circular(80))),
        width: MediaQuery.of(context).size.width / 1.7,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(80)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assests/Profile Pic.jpg"),
                              radius: 18,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Jaguar",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFD9F00),
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    offset: Offset(1.0, 2.0))
                              ]),
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset(
                            "assests/Open Drawer.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 0.2,
                      color: Color(0xff828281),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SvgPicture.asset("assests/Statistics.svg"),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Statistic();
                      }));
                    },
                    child: Text(
                      "Statistics",
                      style: TextStyle(fontSize: 9, color: Color(0xff747474)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SvgPicture.asset("assests/Language.svg"),
                  SizedBox(width: 5),
                  Text(
                    "Language",
                    style: TextStyle(fontSize: 9, color: Color(0xff747474)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assests/Bell.svg"),
                      SizedBox(width: 5),
                      Text("Notification",
                          style:
                              TextStyle(fontSize: 9, color: Color(0xff747474))),
                    ],
                  ),
                  Switch(
                      activeColor: Color(0xffFD9F00),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      value: isSwitched1,
                      onChanged: (value) {
                        print("VALUE:$value");
                        setState(() {
                          isSwitched1 = value;
                        });
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SvgPicture.asset("assests/Help & Support.svg"),
                  SizedBox(width: 5),
                  Text(
                    "Help & Support",
                    style: TextStyle(fontSize: 9, color: Color(0xff747474)),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SvgPicture.asset("assests/About.svg"),
                  SizedBox(width: 5),
                  Text(
                    "About",
                    style: TextStyle(fontSize: 9, color: Color(0xff747474)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SvgPicture.asset("assests/Logout.svg"),
                  SizedBox(width: 5),
                  Text(
                    "Logout",
                    style: TextStyle(fontSize: 9, color: Color(0xff747474)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(52),
                        bottomLeft: Radius.circular(52)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(1.0, 2.0),
                      )
                    ]),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3,
                                      offset: Offset(1.0, 2.0))
                                ]),
                            height: 35,
                            width: 35,
                            child: Builder(builder: (context) {
                              return InkWell(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: SvgPicture.asset(
                                  "assests/drawer.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                              );
                            }),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 3,
                                          offset: Offset(1.0, 2.0))
                                    ]),
                                height: 35,
                                width: 35,
                                child: SvgPicture.asset(
                                  "assests/Home page search box.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return Profile_Picture();
                                  }));
                                },
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assests/Profile Pic.jpg"),
                                  radius: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    CarouselSlider(
                      items: [
                        Image.asset(
                          "assests/Food Face.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assests/Food Face.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assests/Food Face.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                      options: CarouselOptions(
                          viewportFraction: 1,
                          height: 150.0,
                          enableInfiniteScroll: false),
                    ),
                    SvgPicture.asset("assests/Home Slider.svg")
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assests/Path 23166.svg"),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 35,
                      height: 100,
                      child: ListView(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ListVIew(
                              img: "assests/Shopping.svg", txt: "Shopping"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(
                              img: "assests/Coffe and bar.svg",
                              txt: "Coffee & Bar"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(img: "assests/Events.svg", txt: "Events"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(
                              img: "assests/Restaurant.svg", txt: "Restaurant"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(
                              img: "assests/Automotive.svg", txt: "Automotive"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(
                              img: "assests/Shopping.svg", txt: "Shopping"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(
                              img: "assests/Coffe and bar.svg",
                              txt: "Coffee & Bar"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(img: "assests/Events.svg", txt: "Events"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(
                              img: "assests/Restaurant.svg", txt: "Restaurant"),
                          SizedBox(
                            width: 10,
                          ),
                          ListVIew(
                              img: "assests/Automotive.svg", txt: "Automotive"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset("assests/Path 23348.svg")
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Events",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff33393A),
                          fontWeight: FontWeight.bold),
                    ),
                    Text("View all",
                        style: TextStyle(
                          fontSize: 8,
                          color: Color(0xff33393A),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                  height: 230,
                  child: GridView(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.5,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 180),
                    children: [
                      EventCataloge(
                        img_name: "assests/Susnain night 1.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 3.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 2.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 4.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 1.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 3.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 2.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 4.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 1.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 3.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 2.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 4.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 1.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 3.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 2.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                      EventCataloge(
                        img_name: "assests/Susnain night 4.png",
                        event_name: "Susnain Night",
                        name: "Sep 15, 2023",
                      ),
                    ],
                  )),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Viewed",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff33393A),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 8, color: Color(0xff33393A)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 70,
                          width: MediaQuery.of(context).size.width / 3,
                          child: Row(
                            children: [
                              Image.asset("assests/Recent view 1.png"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
                                  Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff585D5E),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Art & Humanities",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xffACACAC)),
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(32),
                                              bottomLeft: Radius.circular(32)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 2,
                                                offset: Offset(1.0, 2.0))
                                          ]),
                                      height: 15,
                                      width: MediaQuery.of(context).size.width /
                                          6.5,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Row(
                                          children: [
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  fontSize: 7,
                                                  color: Color(0xff4CC171)),
                                            ),
                                            RatingBar.builder(
                                              itemSize: 8,
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: false,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular services",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff33393A),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 8, color: Color(0xff33393A)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 70,
                          width: MediaQuery.of(context).size.width / 3,
                          child: Row(
                            children: [
                              Image.asset("assests/Recent view 2.png"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
                                  Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff585D5E),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Art & Humanities",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xffACACAC)),
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(32),
                                              bottomLeft: Radius.circular(32)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 2,
                                                offset: Offset(1.0, 2.0))
                                          ]),
                                      height: 15,
                                      width: MediaQuery.of(context).size.width /
                                          6.5,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Row(
                                          children: [
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  fontSize: 7,
                                                  color: Color(0xff4CC171)),
                                            ),
                                            RatingBar.builder(
                                              itemSize: 8,
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: false,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
