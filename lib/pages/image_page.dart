import 'package:flutter/material.dart';
import 'package:iamrich/pages/message_page.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('I am Rich'),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Color.fromRGBO(45, 0, 3, 0.4),
          body: Center(
              child:GestureDetector(
                child: Image.asset('assets/IAmRich2.jpg'),
                onTap: (){
                  Navigator.of(
                      context)
                      .push(BatmanPageRoute(MessagePage()));
                },
              )
          ),
        ),
      );

  }
}

class BatmanPageRoute extends PageRouteBuilder {
  final Widget child;
  BatmanPageRoute(this.child) : super(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation){
  return child;
  },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation,
    Widget child){
      return Transform.scale(
        scale: animation.value,
        child: Transform.translate(
          offset: const Offset(0.0, 15.0),
          child: FadeTransition(
              opacity: animation,
              child: child),
        ),
      );
    }
  );
}
