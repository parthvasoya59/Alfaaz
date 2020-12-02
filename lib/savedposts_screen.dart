import 'package:flutter/material.dart';

class SavedpostsScreen extends StatefulWidget {
  @override
  _SavedpostsScreenState createState() => _SavedpostsScreenState();
}

class _SavedpostsScreenState extends State<SavedpostsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          title: Text(
            "Saved Posts",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          elevation: 1.0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}