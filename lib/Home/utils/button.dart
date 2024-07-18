import 'package:counter/constant/const.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final String txt;
  final void Function() add;
  const AddButton({super.key, required this.txt, required this.add});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: MaterialButton(
        onPressed: add,
        color: mainColor,
        textColor: Colors.white,
        padding: const EdgeInsets.all(10),
        shape: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        minWidth: MediaQuery.of(context).size.width * .4,
        height: 50,
        child: Text(
          txt,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }

}