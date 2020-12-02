import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          title: Text(
            "Privacy",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          elevation: 1.0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height:((MediaQuery.of(context).size.height/2)),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Column(
              children: [
                privacytags("Comment"),
                privacytags("Tags"),
                privacytags("Mentions"),
                privacytags("Block Account"),
                privacytags("Mute Account"),
              ],
            )
          ),
        ),
      ),
    );
  }
  Widget privacytags(String txt){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:12,horizontal: 35),
          child: Text("$txt",style:TextStyle(fontSize: MediaQuery.of(context).size.width/20)),
        ),
      ],
    );
  }
}