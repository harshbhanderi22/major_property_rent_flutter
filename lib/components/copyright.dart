import 'package:flutter/material.dart';

copyright(){
  return    Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'CopyRight ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 11,
            width: 11,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
                child: Text(
                  'C',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                )),
          ),
          Text(
            ' 2020 Real Estate',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'www.real estate.net',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    ],
  );
}