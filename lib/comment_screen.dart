import 'package:alfaaz_delta/widgets/comment.dart';
import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          backgroundColor: Colors.white,
          elevation: 15.0,
          title: Text("Comments",style: TextStyle(fontSize: 25.0,letterSpacing: 1.0,fontFamily: "Archivo",color: Colors.black,fontWeight: FontWeight.bold),)
        ),
        resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
                      child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child:Column(
                    children: [
                      UserComment(profileurl: "assets/man.png",username: "Malvika Thakur",comment: "What else you can do?",time: "5",like: "3",),
                      UserComment(profileurl: "assets/man.png",username: "Malvika Thakur",comment: "What else you can do?",time: "5",like: "3",),
                      UserComment(profileurl: "assets/man.png",username: "Malvika Thakur",comment: "What else you can do?",time: "5",like: "3",),
                      UserComment(profileurl: "assets/man.png",username: "Malvika Thakur",comment: "What else you can do?",time: "5",like: "3",),
                      UserComment(profileurl: "assets/man.png",username: "Malvika Thakur",comment: "What else you can do?",time: "5",like: "3",),
                    ],
                  )
                ), 
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
         child: bottomtext(),
         padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,)),
        // bottomNavigationBar:
      ),
    );
  }
  Widget bottomtext(){
    return TextField(
      decoration: InputDecoration(
        hintText: "Write a Comment",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.8))),
          filled: true,
          contentPadding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.send,color: Colors.black.withOpacity(0.8),),
        ),
      ),
    );
  }
}