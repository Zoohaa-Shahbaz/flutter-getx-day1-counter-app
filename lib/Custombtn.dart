import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.btnColor, required this.btnTitle, required this.iconData});
  final Color btnColor;
  final String btnTitle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        color: btnColor,

         ),
      child: Row(
        children: [
          Icon(iconData, color: Colors.white),
      Text(btnTitle,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        ],
      ),

      //

    );

  }
}
