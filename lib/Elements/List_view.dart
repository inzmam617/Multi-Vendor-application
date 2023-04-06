import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListVIew extends StatefulWidget {
  String img;
  String txt;

  ListVIew({Key? key, required this.img, required this.txt}) : super(key: key);

  @override
  State<ListVIew> createState() => _ListVIewState();
}

class _ListVIewState extends State<ListVIew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xff4CC171),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32), topLeft: Radius.circular(32))),
          height: MediaQuery.of(context).size.height / 16,
          width: MediaQuery.of(context).size.width / 6.5,
          child: SvgPicture.asset(
            widget.img,
            fit: BoxFit.scaleDown,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
              ]),
          height: MediaQuery.of(context).size.height / 21,
          width: MediaQuery.of(context).size.width / 6.5,
          child: Center(
              child: Text(
            widget.txt,
            style: TextStyle(fontSize: 7, color: Color(0xff585D5E)),
          )),
        )
      ],
    );
  }
}
