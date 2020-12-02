import 'package:flutter/material.dart';

class SwitchaccountScreen extends StatefulWidget {
  @override
  _SwitchaccountScreenState createState() => _SwitchaccountScreenState();
}

class _SwitchaccountScreenState extends State<SwitchaccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          title: Text(
            "Switch Account",
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
              Container(
                height:((MediaQuery.of(context).size.width/5)),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            height: MediaQuery.of(context).size.width/8,
                            width: MediaQuery.of(context).size.width/8,
                            // color: Colors.red,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),],
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/man.png")),
                            ),
                          ),
                        ),
                        Text("Mayank",style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        height: MediaQuery.of(context).size.width/18,
                        width: MediaQuery.of(context).size.width/18,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/radiobutton1.png")),
                        ),
                      ),
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