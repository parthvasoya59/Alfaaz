import 'package:alfaaz_delta/alfaaz_home.dart';
import 'package:alfaaz_delta/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkValue=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Container(
                      width:(MediaQuery.of(context).size.width),
                      height : 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 71, 105, 176),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/facebook.png"),
                          SizedBox(width: 10,),
                          Text("Log In with facebook",style: TextStyle(fontSize: 18,color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      width:(MediaQuery.of(context).size.width),
                      height : 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/google.png",height: 30),
                          SizedBox(width: 10,),
                          Text("Log In with Google",style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width/2)-20,
                        height: 2,
                        color: Colors.grey,
                      ),
                      Text("or",style: TextStyle(fontSize: 20,color:Colors.grey),),
                      Container(
                        width: (MediaQuery.of(context).size.width/2)-20,
                        height: 2,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                    )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (bool value){
                            },
                          ),
                          Text("Reember Me",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ],
                      ),
                      Text("Show Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AlfaazHomeApp()),
                        );
                      },
                      child: Container(
                        width:(MediaQuery.of(context).size.width),
                        height : 60,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        child: Center(child: Text("Log In",style: TextStyle(fontSize: 18,color: Colors.white))),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:17),),
                  SizedBox(height:20),
                  Divider(color: Colors.grey,),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ",style: TextStyle(fontSize: 20,color: Colors.grey),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupScreen()),
                          );
                        },
                        child: Text("Sign Up",style: TextStyle(fontSize: 20),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}