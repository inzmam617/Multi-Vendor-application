import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RelestedListView extends StatefulWidget {
  String img;
  String txt1;
  String txt2;
  String txt3;

  RelestedListView(
      {Key? key,
      required this.img,
      required this.txt1,
      required this.txt2,
      required this.txt3})
      : super(key: key);

  @override
  State<RelestedListView> createState() => _RelestedListViewState();
}

class _RelestedListViewState extends State<RelestedListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Image.asset(widget.img),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                widget.txt1,
                style: TextStyle(
                    fontSize: 8,
                    color: Color(0xff585D5E),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.txt2,
                style: TextStyle(fontSize: 7, color: Color(0xffACACAC)),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 7),
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
                  width: MediaQuery.of(context).size.width / 6.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Text(
                          widget.txt3,
                          style:
                              TextStyle(fontSize: 7, color: Color(0xff4CC171)),
                        ),
                        RatingBar.builder(
                          itemSize: 8,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0),
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
    );
  }
}
