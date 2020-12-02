import 'package:alfaaz_delta/comment_screen.dart';
import 'package:alfaaz_delta/widgets/posttags.dart';
import 'package:flutter/material.dart';


Padding post(BuildContext context,String imageurl,String profilename,String posttime) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Text(
                                "$profilename",
                                textAlign: TextAlign.left,
                              )),
                              Container(
                                  child: Text(
                                "$posttime",
                                textAlign: TextAlign.left,
                              )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  decoration:
                    new BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  child: Stack(
                    children : [
                      Image.network(
                        "$imageurl",
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.bookmark_border,
                          color: Colors.black,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 32,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.insert_comment,
                    size: 32,
                  ),
                  color: Colors.orange[300],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommentScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    size: 32,
                  ),
                  color: Colors.blue[700],
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Tags",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildTags("Love"),
                  buildTags("Fiction"),
                  buildTags("Passion"),
                  buildTags("Quote"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
