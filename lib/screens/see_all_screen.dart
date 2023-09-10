
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_property/components/search_properties_components.dart';



class SeeAllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            'Properties',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            SizedBox(width: 10,)
          ], systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: listOfProperties(),
      ),
    );
  }
}
