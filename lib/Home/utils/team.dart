import 'package:counter/Home/utils/button.dart';
import 'package:counter/constant/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  final String counter;
  final String txt1;
  final String txt2;
  final String txt3;
  final String team;
  final void Function() btn1;
  final void Function() btn2;
  final void Function() btn3;

  const Team({
    super.key,
    // required this.add,
    required this.counter,
    required this.team,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.btn1,
    required this.btn2,
    required this.btn3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          team,
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: mainColor
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * .5 - 20,
          height: 300,
          child: FittedBox(
            child: Text(
              counter,
              style: TextStyle(
                  fontSize: 200,
                  fontWeight: FontWeight.w500,
                  color: mainColor
              ),
            ),
          ),
        ),

        AddButton(txt: txt1, add: btn1,),
        AddButton(txt: txt2, add: btn2,),
        AddButton(txt: txt3, add: btn3,),
      ],
    );
  }

}