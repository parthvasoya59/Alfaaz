import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          title: Text(
            "Language",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header("Login Security"),
              Container(
                height:((MediaQuery.of(context).size.width/7.2)*2),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20.0),
                          child: Text("English"),
                        ),
                        Radio(value: 1, groupValue: 1, onChanged: null,toggleable: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:18.0),
                          child: Text("Hindi"),
                        ),
                        Radio(value: 0, groupValue: 1, onChanged: null,toggleable: true,)
                      ],
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}