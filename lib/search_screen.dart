import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                      child: Icon(Icons.arrow_back)),
                    Text(
                      "Search", 
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width/20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              hintText: "Search for ideas",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusColor: Colors.white,
                              prefixIcon: Icon(Icons.search,color: Colors.white,),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.black.withOpacity(0.8))),
                                // filled: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 14.0), 
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                        child: RaisedButton(
                          onPressed: (){},
                          textColor: Colors.white,
                          color: Colors.black,
                          child: Text(
                            "Filter",
                            style: TextStyle(
                              // color: Colors.white,
                              // fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
                header("Profiles"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      userprofile("assets/man.png","Love Shayari","23","4"),
                      userprofile("assets/man.png","Love Shayari","10","9"),
                      userprofile("assets/man.png","Love Shayari","40","5"),
                      userprofile("assets/man.png","Love Shayari","55","30"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width/23,
                        ),
                      ),
                    ],
                  ),
                ),
                header("Top Categories"),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        category(context,"Shayari"),
                        category(context,"Ghazals"),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        category(context,"Shayari"),
                        category(context,"Ghazals"),
                      ],
                    ),
                  ],
                ),
                header("Top Tags"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      tags(context,"Love"),
                      tags(context,"Fiction"),
                      tags(context,"Passion"),
                      tags(context,"Horror"),
                    ],
                  ),
                ),
                header("Languages"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      tags(context,"Hindi"),
                      tags(context,"English"),
                      tags(context,"Urdu"),
                      tags(context,"Gujarati"),
                    ],
                  ),
                ),
                header("Suggestions for you"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tags(BuildContext context,String txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/14,
        width: MediaQuery.of(context).size.width/4.2,
        // color: Colors.grey[400],
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(child: Text("$txt",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20))),
      ),
    );
  }

  Container category(BuildContext context,String txt) {
    return Container(
      height: MediaQuery.of(context).size.height/14,
      width: MediaQuery.of(context).size.width/2.2,
      // color: Colors.grey[400],
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(child: Text("$txt",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20))),
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

  Widget userprofile(String url,String username,String nooffollowers,String noofpost) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("$url"),
              ),
            ),
          ),
          Text("$username",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
          Text("$nooffollowers Followers . $noofpost Posts",style: TextStyle(fontSize: 10)),
        ],
      ),
    );
  }
}
