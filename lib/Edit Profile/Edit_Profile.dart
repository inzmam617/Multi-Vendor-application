import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Edit_Profile extends StatelessWidget {
  const Edit_Profile({Key? key}) : super(key: key);

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
                  Row(
                      children: [
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
                    SizedBox(width: 8),
                    Text(
                      "Profile",
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
                  color: Color(0xff4CC171),
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          image: DecorationImage(
                              image: AssetImage("assests/AAAAAA.jpg"),
                              fit: BoxFit.cover)),
                      height: 100,
                      width: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Steve Garrett",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(
                          "Singapore, Golden Mile",
                          style: TextStyle(fontSize: 7, color: Colors.white),
                        ),
                        Text(
                          "@steve,garrett",
                          style: TextStyle(fontSize: 7, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 60,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(22),
                                        bottomLeft: Radius.circular(22)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 60,
                                width: 70,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Feedback",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff585D5E)),
                                    ),
                                    Text(
                                      "97/01%",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff4CC171)),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Post",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff585D5E)),
                                  ),
                                  Text("245",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff4CC171)))
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(22),
                                        bottomRight: Radius.circular(22)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1,
                                          offset: Offset(1.0, 2.0))
                                    ]),
                                height: 60,
                                width: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
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
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SvgPicture.asset("assests/Name.svg"),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      fontSize: 11, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SvgPicture.asset("assests/Works at.svg"),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20),
                                  hintText: "Works at",
                                  hintStyle: TextStyle(
                                      fontSize: 11, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SvgPicture.asset("assests/Address.svg"),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20),
                                  hintText: "Address",
                                  hintStyle: TextStyle(
                                      fontSize: 11, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SvgPicture.asset("assests/Group 11727.svg"),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      fontSize: 11, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SvgPicture.asset("assests/Website.svg"),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20),
                                  hintText: "Website",
                                  hintStyle: TextStyle(
                                      fontSize: 11, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Information",
                        style: TextStyle(fontSize: 11, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(22),
                            bottomLeft: Radius.circular(22),
                            bottomRight: Radius.circular(22)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 100,
                    width: MediaQuery.of(context).size.width / 1.3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
