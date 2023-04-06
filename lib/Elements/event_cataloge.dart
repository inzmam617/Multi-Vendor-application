import 'package:flutter/material.dart';

class EventCataloge extends StatefulWidget {
  String img_name;
  String event_name;
  String name;

  EventCataloge(
      {Key? key,
      required this.img_name,
      required this.event_name,
      required this.name})
      : super(key: key);

  @override
  State<EventCataloge> createState() => _EventCatalogeState();
}

class _EventCatalogeState extends State<EventCataloge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          image: DecorationImage(
              image: AssetImage(widget.img_name), fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding: EdgeInsets.only(
            left: 9, top: MediaQuery.of(context).size.height / 7 - 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
              ),
              height: 30,
              width: MediaQuery.of(context).size.width / 5,
              child: Center(
                  child: Text(
                "Susnain Night",
                style: TextStyle(fontSize: 8, color: Colors.white),
              )),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Sep 15, 2023",
                style: TextStyle(fontSize: 6, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
