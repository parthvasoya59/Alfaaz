import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserComment extends StatefulWidget {
  final String username;
  final String comment;
  final String time;
  final String profileurl;
  final String like;

  UserComment({this.username,this.comment,this.time,this.profileurl,this.like});
  @override
  _UserCommentState createState() => _UserCommentState();
}

class _UserCommentState extends State<UserComment> {
  int open=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(widget.profileurl))),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("${widget.username}",
                          style: TextStyle(
                              fontFamily: "Archivo",
                              fontSize: MediaQuery.of(context).size.width/25,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Text(
                          "${widget.comment}",
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: "Archivo",
                              fontSize: MediaQuery.of(context).size.width/25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "${widget.time} min ago",
                            style: TextStyle(fontFamily: "Archivo"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Reply",
                            style: TextStyle(
                                fontFamily: "Archivo", fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: <Widget>[
                        Text("______", style: TextStyle()),
                        Text("View  "),
                        Text("24 "),
                        GestureDetector(
                          onTap: (){
                            print("Click");
                            UserComment();
                          },
                          child: Text("replies"))
                      ]
                    ),
                  ),
                ]
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("${widget.like} ",style: TextStyle(fontFamily: "Archivo",fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width/20),),
              SvgPicture.asset('assets/heart.svg',width: MediaQuery.of(context).size.width/20,),
            ]
          )
        ],
      ),
    );
  }
}
