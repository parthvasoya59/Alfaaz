import 'package:flutter/material.dart';

GestureDetector buildTags(String name) {
  return GestureDetector(
    onTap: () {},
    child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            width: 2,
            color: Colors.grey[400],
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
        ),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.grey[700],
          ),
        )),
  );
}
