import 'package:flutter/material.dart';

class UserinfoScreen extends StatefulWidget {
  @override
  _UserinfoScreenState createState() => _UserinfoScreenState();
}

class _UserinfoScreenState extends State<UserinfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Skip")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Let's fill some details.It won't take time.")
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/25,),
                      Stack(
                        children: <Widget>[
                          Image.asset('assets/user2.png',fit: BoxFit.fill,),
                          Image.asset('assets/user.png',fit: BoxFit.fill,), // Background Image !
                        ]
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      Text("Upload a profile picture*"),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter username*"),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[800],width: 5.0),
                        borderRadius: BorderRadius.circular(12.0)
                        ),
                      )
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tell us about your intrest"),
                    intresttags(context,"Quote","0"),
                    intresttags(context,"Poem","1"),
                    intresttags(context,"Short Stories","0"),
                    intresttags(context,"Shayari","0"),
                    intresttags(context,"Gazals","0"),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tell us something about you.."),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Start Typing...",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[800],width: 5.0),
                        borderRadius: BorderRadius.circular(12.0)
                        ),
                      )
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding intresttags(BuildContext context,String txt,String flag) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        width:(MediaQuery.of(context).size.width),
        height : 60,
        decoration: BoxDecoration(
          color: flag == "1" ? Colors.black.withOpacity(0.8) : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.black)
        ),
        child: Center(child: Text("$txt",style: TextStyle(fontSize: 18,color: flag == "1"? Colors.white : Colors.black))),
      ),
    );
  }
}