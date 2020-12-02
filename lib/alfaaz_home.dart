import 'package:alfaaz_delta/alfaaz_profile.dart';
import 'package:alfaaz_delta/comment_screen.dart';
import 'package:alfaaz_delta/notification_screen.dart';
import 'package:alfaaz_delta/search_screen.dart';
import 'package:alfaaz_delta/userinfo_screen.dart';
import 'package:alfaaz_delta/widgets/post.dart';
import 'package:flutter/material.dart';

class AlfaazHomeApp extends StatelessWidget {
  const AlfaazHomeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController tabControllerDomain, tabControllerActivity, tabControllerType;
  final selectedColor = Colors.black;
  int currentTabDomain, currentTabActivity, currentTabType;

  @override
  void initState() {
    super.initState();
    tabControllerDomain = TabController(length: 2, vsync: this);
    tabControllerActivity = TabController(length: 3, vsync: this);
    tabControllerType = TabController(length: 5, vsync: this);
    currentTabDomain = 0;
    currentTabActivity = 0;
    currentTabType = 0;
  }

  void gotToDomain(int index) {
    this.tabControllerDomain.animateTo(index);
    setState(() {
      this.currentTabDomain = index;
    });
  }

  void goToActivity(int index) {
    this.tabControllerActivity.animateTo(index);
    setState(() {
      this.currentTabActivity = index;
    });
  }

  void goToType(int index) {
    this.tabControllerType.animateTo(index);
    setState(() {
      this.currentTabType = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: <Widget>[
          Container(
            height: 220 % MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20 % MediaQuery.of(context).size.height,
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.ac_unit,
                                color: currentTabDomain == 0
                                    ? selectedColor
                                    : Colors.grey,
                              ),
                              iconSize: 32,
                              onPressed: () {
                                gotToDomain(0);
                              },
                              disabledColor: Colors.grey[300],
                            ),
                            Text(
                              'Public',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.accessibility_new,
                              color: currentTabDomain == 1
                                  ? selectedColor
                                  : Colors.grey,
                            ),
                            iconSize: 32,
                            onPressed: () {
                              gotToDomain(1);
                            },
                            disabledColor: Colors.grey[300],
                          ),
                          Text(
                            'Friends',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(
                      width: 2,
                      color: Colors.grey[300],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            goToActivity(0);
                          },
                          child: Container(
                            height: 50.0,
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            decoration: currentTabActivity == 0
                                ? BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[400],
                                        blurRadius: 5,
                                        spreadRadius: 2,
                                        offset: Offset(1, 2),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                                : null,
                            child: Center(
                              child: Text(
                                "Recent",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: currentTabActivity == 0
                                      ? Colors.white
                                      : selectedColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            goToActivity(1);
                          },
                          child: Container(
                            height: 50.0,
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            decoration: currentTabActivity == 1
                                ? BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[400],
                                        blurRadius: 5,
                                        spreadRadius: 2,
                                        offset: Offset(1, 2),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                                : null,
                            child: Center(
                              child: Text(
                                "Most Liked",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: currentTabActivity == 1
                                      ? Colors.white
                                      : selectedColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            goToActivity(2);
                          },
                          child: Container(
                            height: 50.0,
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            decoration: currentTabActivity == 2
                                ? BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[400],
                                        blurRadius: 5,
                                        spreadRadius: 2,
                                        offset: Offset(1, 2),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                                : null,
                            child: Center(
                              child: Text(
                                "Most Viewed",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: currentTabActivity == 2
                                      ? Colors.white
                                      : selectedColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10 % MediaQuery.of(context).size.height,
          ),
          Container(
            height: 45 % MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildContainer("Poem", 0),
                buildContainer("Shayari", 1),
                buildContainer("Gazal", 2),
                buildContainer("Quotes", 3),
                buildContainer("Show Poems", 4),
              ],
            ),
          ),
          SizedBox(
            height: .01 % MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),
                post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),
                post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),
                post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),
                post(context,"https://cdn.pixabay.com/photo/2020/09/10/04/40/mountains-5559241__340.jpg","Profile name","Post name"),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: 
          Container(
            height: 37 % MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(),
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlfaazHomeApp()),
                      );
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchScreen()),
                      );
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotificationScreen()),
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }


  GestureDetector buildContainer(String name, int index) {
    return GestureDetector(
      onTap: () {
        goToType(index);
      },
      child: Container(
        padding: EdgeInsets.all(14.0),
        decoration: currentTabType == index
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: Colors.black,
                  ),
                ),
              )
            : null,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontWeight:
                  currentTabType == index ? FontWeight.w900 : FontWeight.normal,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
