import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class viewcontent extends StatefulWidget {
  String? content;
  String? image;
  String? title;
  viewcontent({this.content, this.image, this.title});
  @override
  State<viewcontent> createState() => _viewcontentState();
}

class _viewcontentState extends State<viewcontent> {
  @override
  void initState() {
    // print(widget.content);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191826),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          children: [
            Text(
              'data',
              style: TextStyle(color: Color(0xfff43370)),
            ),
            Column(
              children: [
                Container(
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.image.toString()),
                        fit: BoxFit.cover,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Text(
                    widget.title.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.content.toString(),
                      style: TextStyle(color: Color(0xff868597)),
                    ))
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
