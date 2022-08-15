import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const Cards({Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300.0,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance',style: TextStyle(
                    fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
                Image.asset('images/visa.png',height: 60.0),
              ],
            ),
            SizedBox(height: 12.0),
            Text('\$'+ balance.toString(),style: TextStyle(
              color: Colors.white,
              fontSize: 36.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 26.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber.toString(),style: TextStyle(
                  color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                ),),
                Text(expiryMonth.toString()+'/'+expiryYear.toString(),style: TextStyle(
                  color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ],
        ),
      ),
    );;
  }
}




