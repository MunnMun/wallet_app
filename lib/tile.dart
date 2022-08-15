import 'package:flutter/material.dart';

class Tile extends StatelessWidget {

  final String imgPath;
  final String tileName;
  final String tileSubtile;

  const Tile({Key? key,
    required this.imgPath,
    required this.tileName,
    required this.tileSubtile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12.0)
          ),
          padding: EdgeInsets.all(12.0),
          height: 80.0,
          child: Image.asset(imgPath),
        ),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tileName,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
            SizedBox(height: 8.0),
            Text(tileSubtile,style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600],
            ),),
          ],
        ),
        SizedBox(width: 60.0),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
