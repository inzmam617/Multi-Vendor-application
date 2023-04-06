import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Sign%20In/Sign_In.dart';

class Fourth_Page extends StatelessWidget {
  const Fourth_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              SvgPicture.asset("assests/fourth page.svg"),
              SizedBox(height: 50),
              Text(
                "You did it,\n you're in.",
                style: TextStyle(fontSize: 34, color: Colors.black),
              ),
              SizedBox(height: 15),
              Text(
                "Welcome to Brazilian community,\n Book Your Service in One click!",
                style: TextStyle(fontSize: 14, color: Color(0xff646464)),
              ),
              SizedBox(height: 80),
              SizedBox(
                width: 140,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Sign_In();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff4CC171),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Enter",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
