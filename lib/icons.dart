import 'package:flutter/material.dart';

class btnIcon extends StatelessWidget {

  final String iconImgPath;
  final String buttonText;

  const btnIcon({Key? key,
    required this.iconImgPath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90.0,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40.0,
                  spreadRadius: 10.0,
                ),
              ]
          ),
          child: Center(
            child: Image.asset(iconImgPath),
          ),
        ),
        SizedBox(height: 12.0),
        Text(buttonText,style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey[700],
        ),),
      ],
    );
  }
}
