import 'package:flutter/material.dart';

Widget tags(BuildContext context,String txt,String flag) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/20,
        width: MediaQuery.of(context).size.width/3.8,
        decoration: BoxDecoration(
          color: flag == "1" ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$txt ",style: TextStyle(
                fontSize: MediaQuery.of(context).size.width/28,
                color:flag == "1" ? Colors.white : Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }