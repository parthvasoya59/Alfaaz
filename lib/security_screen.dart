import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          title: Text(
            "Security",
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
              header("Login Security"),
              Container(
                height:((MediaQuery.of(context).size.width/7.2)),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  children: [
                    privacytags("Password"),
                  ],
                )
              ),
            ],
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
  Widget header(String txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:18.0),
      child: Text(
        "$txt",
        style: TextStyle(
          fontSize: 18,
          letterSpacing: 1,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}