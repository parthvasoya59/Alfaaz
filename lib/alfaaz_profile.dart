import 'package:alfaaz_delta/language_screen.dart';
import 'package:alfaaz_delta/privacy_screen.dart';
import 'package:alfaaz_delta/savedposts_screen.dart';
import 'package:alfaaz_delta/security_screen.dart';
import 'package:alfaaz_delta/switchaccount_screen.dart';
import 'package:alfaaz_delta/widgets/post.dart';
import 'package:alfaaz_delta/widgets/profilepagetags.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

enum ProfileOptions {
  invite,
  savedPost,
  privacy,
  security,
  language,
  information,
  help,
  about,
  switchAccount,
  addAccount,
  logOut
}

class _MainPageState extends State<MainPage> {
  ProfileOptions _selected;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
                    height: MediaQuery.of(context).size.height * .25,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/background.jpg",
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        PopupMenuButton<ProfileOptions>(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 32,
                          ),
                          onSelected: (ProfileOptions result) {
                            setState(() {
                              _selected = result;
                            });
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<ProfileOptions>>[
                            PopupMenuItem<ProfileOptions>(
                            value: ProfileOptions.invite,
                            child: Container(alignment: Alignment.topRight,child: Icon(Icons.close)),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.invite,
                              child: Text("Invite Friends"),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.savedPost,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SavedpostsScreen()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.bookmark_border),
                                    ),
                                    Text("Saved Post"),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.privacy,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PrivacyScreen()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.lock),
                                    ),
                                    Text("Privacy"),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.security,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SecurityScreen()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.security),
                                    ),
                                    Text("Security"),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.language,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LanguageScreen()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.g_translate),
                                    ),
                                    Text("Language"),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.about,
                              child: Text("Personal Information"),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.about,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.info_outline),
                                  ),
                                  Text("Help"),
                                ],
                              ),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.about,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.info_outline),
                                  ),
                                  Text("About"),
                                ],
                              ),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.about,
                              child: GestureDetector(onTap:(){Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SwitchaccountScreen()),
                                  );
                                },
                                child: Text("Switch Account")),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.about,
                              child: Text("Add Account"),
                            ),
                            PopupMenuItem<ProfileOptions>(
                              value: ProfileOptions.about,
                              child: Text("Logout"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .17,
                    left: MediaQuery.of(context).size.width * .36,
                    child: Container(
                      height: MediaQuery.of(context).size.width/3.3,
                      width: MediaQuery.of(context).size.width/3.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.0),
                        image: DecorationImage(image:AssetImage("assets/man.png",))
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .3,
                  )
                ],
              ),
              Text("@Mayank",style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width/25),),
              Text("Poet",style: TextStyle(color:Colors.grey,fontSize: MediaQuery.of(context).size.width/25),),
              SizedBox(
                height:MediaQuery.of(context).size.height/25
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  numbersandtags(context,"20","Followers"),
                  numbersandtags(context,"21","Posts"),
                  numbersandtags(context,"20","Following"),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text("I'm a poet who wants to write things that can aspire every individual.",style: TextStyle(color: Colors.grey),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(context,Icons.edit,"Edit"),
                  button(context,Icons.share,"Share"),
                ],
              ),
              Divider(height: MediaQuery.of(context).size.height/25,color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width/20),
                      Image.asset("assets/facebookblue.png",scale: .8,),
                      SizedBox(width: MediaQuery.of(context).size.width/20),
                      Image.asset("assets/instagram.png",scale: .8,),
                      SizedBox(width: MediaQuery.of(context).size.width/20),
                      Image.asset("assets/twitter.png",scale: .8,),
                    ],
                  ),
                  tags(context, "Follow","1")
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width/20,),
                  Text("Posts",style: TextStyle(fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    tags(context,"Shayri","1"),
                    tags(context,"Quotes","0"),
                    tags(context,"Ghazals","0"),
                    tags(context,"Quotes","0"),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),
              post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),
              post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),
            ],
          ),
        ),
      ),
    );
  }

  

  Padding button(BuildContext context,IconData iconData,String txt) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        width:(MediaQuery.of(context).size.width/4),
        height : MediaQuery.of(context).size.height/16,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 2),
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(12.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            Text(" $txt",style: TextStyle(fontSize: 18))
          ],
        ),
      ),
    );
  }

  Column numbersandtags(BuildContext context,String number,String txt) {
    return Column(
      children: [
        Text("$number",style: TextStyle(fontSize:MediaQuery.of(context).size.width/14,fontWeight: FontWeight.bold)),
        Text("$txt",style: TextStyle(fontSize:MediaQuery.of(context).size.width/25,color: Colors.grey)),
      ],
    );
  }
}
