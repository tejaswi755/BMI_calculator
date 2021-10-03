import 'package:flutter/material.dart';

class ReusableClass extends StatelessWidget {
  ReusableClass({@required this.colour, this.checkchild, this.onpress});
  final Color colour;
  final Widget checkchild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: checkchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: colour,
        ),
      ),
    );
  }
}
