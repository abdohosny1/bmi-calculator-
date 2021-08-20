import 'package:flutter/material.dart';

import 'const.dart';

class DesignApp extends StatelessWidget {
 Widget myWidget;
 Color mycolor;
   void Function()? myfunction;

 DesignApp({required this.mycolor,required this.myfunction,required this.myWidget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Container(
        child: myWidget,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: mycolor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
//Color(0xff002366)



class ActionIcon extends StatelessWidget {
  void Function()? myfunction;
  IconData? icon;

  ActionIcon({required this.myfunction,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey
      ) ,
      child: IconButton(
        onPressed:myfunction,
        icon: Icon(icon,color: Colors.black,size: 25),
      ),
    );
  }
}


class ButtonWidget extends StatelessWidget {
  void Function()? myfunction;
  var text;
  ButtonWidget({required this.myfunction,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.pinkAccent,
      child: TextButton(
        child: Text(
          text,
          style: buttonStyle,
        ),
        onPressed: myfunction,
      ),
    );
  }
}