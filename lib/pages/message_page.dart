import 'package:flutter/material.dart';
import 'package:iamrich/pages/image_page.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Color.fromRGBO(45, 0, 3, 0.4),
        body: Center(
            child:GestureDetector(
              child: Center(child:  Text(
                  'Your Are Very Rich',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
        ),
      ),
    );
  }
}
