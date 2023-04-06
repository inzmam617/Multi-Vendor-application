import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Add_New_List extends StatelessWidget {
  const Add_New_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          "assests/Back Arrow.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Add New Listing",
                      style: TextStyle(fontSize: 18, color: Color(0xff585D5E)),
                    ),
                  ]),
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
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          "assests/Notifications.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: AssetImage("assests/Profile Pic.jpg"),
                        radius: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff78F29E),
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    )
                  ]),
              height: 180,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff64D989),
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                            )
                          ]),
                      height: 180,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              "assests/upload-outbox-line-icon.svg"),
                          Text(
                            "Upload feature here",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image: AssetImage("assests/bed room.png"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/living room.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assests/modren bedroom.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/deep-ocean.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/pink water.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/beach ocean.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 25),
                  hintText: "Title",
                  hintStyle: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Content",
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xfffef9f1),
                borderRadius: BorderRadius.circular(22),
              ),
              height: 110,
              width: MediaQuery.of(context).size.width / 1.1,
            )
          ],
        ),
      ),
    );
  }
}
