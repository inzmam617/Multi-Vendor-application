import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedList extends StatefulWidget {
  String img;
  String Svg_img;
  String txt1;
  String txt2;
  String txt3;
  String txt4;

  FeaturedList(
      {Key? key,
      required this.img,
      required this.Svg_img,
      required this.txt1,
      required this.txt2,
      required this.txt3,
      required this.txt4})
      : super(key: key);

  @override
  State<FeaturedList> createState() => _FeaturedListState();
}

class _FeaturedListState extends State<FeaturedList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          image: DecorationImage(
              image: AssetImage(widget.img), fit: BoxFit.cover)),
      height: 100,
      width: MediaQuery.of(context).size.width / 2.2,
      child: Column(
        children: [
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(widget.Svg_img)),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
              ),
              height: 40,
              width: MediaQuery.of(context).size.width / 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.txt1,
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    ),
                    Text(
                      widget.txt2,
                      style: TextStyle(fontSize: 7, color: Color(0xffE4E4E4)),
                    ),
                    Row(
                      children: [
                        Text(widget.txt3,
                            style: TextStyle(
                                fontSize: 7, color: Color(0xffE4E4E4))),
                        SizedBox(width: 5),
                        RatingBar.builder(
                          itemSize: 9,
                          initialRating: 5,
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
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Text(
            widget.txt4,
            style: TextStyle(fontSize: 7, color: Colors.white),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
