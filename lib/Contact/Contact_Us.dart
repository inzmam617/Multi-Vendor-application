import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Contact_Us extends StatelessWidget {
  const Contact_Us({Key? key}) : super(key: key);

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
                    SizedBox(width: 8),
                    Text(
                      "Contact Us",
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
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                      image: AssetImage("assests/mappings.jpg"),
                      fit: BoxFit.cover)),
              height: 350,
              width: MediaQuery.of(context).size.width / 1.1,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
                            hintStyle:
                                TextStyle(fontSize: 11, color: Colors.black)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
                            hintStyle:
                                TextStyle(fontSize: 11, color: Colors.black)),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
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
                width: MediaQuery.of(context).size.width / 1.1,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 150,
              height: 32,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff4CC171),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Send",
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
