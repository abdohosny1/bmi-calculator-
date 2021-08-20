import 'package:bimcalculator/const.dart';
import 'package:bimcalculator/model/getimb.dart';
import 'package:bimcalculator/screen/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app_widget.dart';

class MYHome extends StatefulWidget {
  @override
  _MYHomeState createState() => _MYHomeState();
}

class _MYHomeState extends State<MYHome> {
  bool active = true;
  bool activetwo = true;

  int hight = 100;
  int wight = 50;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DesignApp(
                    mycolor: active ? Color(0xff002366) : Color(0xff002399),
                    myfunction: () {
                      setState(() {
                        active = !active;
                        activetwo=true ;
                      });
                    },
                    myWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Male',
                          style: textStyle,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: DesignApp(
                    mycolor: activetwo ? Color(0xff002366) : Color(0xff002399),
                    myfunction: () {
                      setState(() {
                        activetwo = !activetwo;
                      active=true;
                      });
                    },
                    myWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Famale',
                          style: textStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: DesignApp(
                  mycolor: defultcolor,
                  myfunction: () {},
                  myWidget: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'HEIGHT',
                        style: textStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            hight.toString(),
                            style: numberStyle,
                          ),
                          Text(
                            'cm',
                            style: textStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0XFFEB1555),
                            inactiveTrackColor: Color(0XFFEB1599),
                          thumbColor: Colors.white,
                          thumbShape:RoundSliderThumbShape(
                            enabledThumbRadius: 15,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0
                          )
                        ),
                        child: Slider(
                          label: hight.toString(),
                          value: hight.toDouble(),
                          onChanged: (newvalue) {
                            setState(() {
                              hight = newvalue.toInt();
                            });
                          },
                          min: 0,
                          max: 200,
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: DesignApp(
                  mycolor: defultcolor,
                  myfunction: () {},
                  myWidget: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'WEIGHT',
                        style: textStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        wight.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ActionIcon(
                            icon: FontAwesomeIcons.plus,
                            myfunction: () {
                              setState(() {
                                wight++;
                              });
                            },
                          ),
                          ActionIcon(
                            icon: FontAwesomeIcons.minus,
                            myfunction: () {
                              setState(() {
                                wight--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: DesignApp(
                  mycolor: defultcolor,
                  myfunction: () {},
                  myWidget: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Age',
                        style: textStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        age.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ActionIcon(
                            icon:FontAwesomeIcons.plus,
                            myfunction: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          ActionIcon(
                            icon: FontAwesomeIcons.minus,
                            myfunction: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          ButtonWidget(
            text: 'CALCULATE',
            myfunction: (){

              CalculateBrain br=CalculateBrain(weight: wight,hight: hight);

              var r=br.calculateBIM();
              print( r);
              var t=br.getResult();
              var s=br.getInterput();



              Navigator.of(context).push(MaterialPageRoute(builder: (e)=>Result(
                text:t ,
                num: r,
                result: s,
              )));
          },)
        ],
      ),
    );
  }

}


