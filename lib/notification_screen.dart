import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    Text(
                      "Notifications", 
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width/18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      tags(context, "Likes","1"),
                      tags(context, "Comments","0"),
                      tags(context, "Followers","0"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical : 20),
                  child: notification(context),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical : 20),
                  child: notification(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget notification(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sidebarnotification(context,"24","Sep","2020","Tue","5"),
        Column(
          children: [
            usernotification(context),
            usernotification(context),
            usernotification(context),
            usernotification(context),
            usernotification(context),
          ],
        ),
      ],
    );
  }

  Column sidebarnotification(BuildContext context,String date,String month,String year,String day,String count) {
    double cnt = double. parse(count)-1.2;
    return Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Text("$date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Text("$month, $year"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Container(
              width: MediaQuery.of(context).size.width/10,
              height: MediaQuery.of(context).size.width/12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, spreadRadius: 1)
                ]
              ),
              child: Center(child: Text("$day",style: TextStyle(fontWeight:FontWeight.bold),)),
            ),
          ),
          Container(
            height: 10,
            width:10,
            decoration: BoxDecoration(
              color: Colors.black,
              shape : BoxShape.circle,
            ),
          ),
          Container(
            color:Colors.black,
            height: MediaQuery.of(context).size.height/12*cnt,
            width: 1.2,
          ),
        ],
      );
  }

  Widget usernotification(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        height: MediaQuery.of(context).size.height/12,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/man.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: (MediaQuery.of(context).size.width/2),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width/24
                      ),
                      children: <TextSpan>[
                        TextSpan(text: "goluavengers21",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,fontWeight: FontWeight.bold)),
                        TextSpan(text: " mentioned you in a comment.",style: TextStyle(fontSize: MediaQuery.of(context).size.width/25,)),
                      ]
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tags(BuildContext context,String txt,String flag) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/15,
        width: MediaQuery.of(context).size.width/3.8,
        decoration: BoxDecoration(
          color: flag == "1" ? Colors.black : Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$txt ",style: TextStyle(
                fontSize: MediaQuery.of(context).size.width/28,
                color:flag == "1" ? Colors.white : Colors.black
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width/20,
                height: 30.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: flag == "1" ? Colors.white : Colors.black
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: flag == "1" ? Colors.black : Colors.white,
                    ), 
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}