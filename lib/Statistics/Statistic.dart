import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Statistic extends StatelessWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(52),
                bottomRight: Radius.circular(52))),
        leading: Padding(
          padding: const EdgeInsets.only(top: 22.5, left: 20),
          child: Stack(
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
                  "assests/Statistic drawer.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFD9F00),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xffFD9F00),
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0))
                      ]),
                  height: 10,
                  width: 10,
                ),
              )
            ],
          ),
        ),
        title: Text(
          "Statistics",
          style: TextStyle(fontSize: 16, color: Color(0xff585D5E)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(1.0, 2.0))
                  ]),
              height: 25,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffACACAC),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32),
                              bottomRight: Radius.circular(32)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 25,
                      width: 110,
                      child: Center(
                          child: Text(
                        "Sale Summary",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      )),
                    ),
                    Text(
                      "Weekly",
                      style: TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                    ),
                    Text(
                      "Monthly",
                      style: TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff4CC171),
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 25,
                      width: 60,
                      child: Center(
                          child: Text(
                        "Yearly",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Yearly",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff858381)),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    "assests/Graph.svg",
                    fit: BoxFit.scaleDown,
                    height: 185,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Sales",
                    style: TextStyle(fontSize: 12, color: Color(0xff585D5E)),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$ 12,234",
                    style: TextStyle(fontSize: 18, color: Color(0xff585D5E)),
                  )
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
              height: MediaQuery.of(context).size.height / 3.2,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff4CC171),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32),
                                  topRight: Radius.circular(32),
                                  bottomRight: Radius.circular(32)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 25,
                          width: 110,
                          child: Center(
                              child: Text(
                            "Country Users",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )),
                        ),
                        SvgPicture.asset("assests/information-svgrepo.svg"),
                      ],
                    ),
                  ),
                  Divider(),
                  Image.asset("assests/Mapping.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
