import 'package:bimcalculator/app_widget.dart';
import 'package:bimcalculator/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var text;
  var num;
  var result;

  Result({
    required this.text,required this.num,required this.result
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Text('YOUR RESULT', style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height-200,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.indigo,
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              children: [
                SizedBox(height: 10,),
                Text(text,style: TextStyle(color:Colors.green,fontSize: 40,fontWeight: FontWeight.bold)),
                SizedBox(height: 20,),
                Text(num,style: numberStyle,),
                SizedBox(height: 20,),
                Text(result,style: TextStyle(fontSize: 25),)

              ],
            ),
          ),
          ButtonWidget(
              myfunction: (){
                Navigator.of(context).pop();
                },
              text: 'RE-Calculate')

        ],
      ),
    );
  }
}
