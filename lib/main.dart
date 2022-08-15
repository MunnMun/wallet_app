import 'package:flutter/material.dart';
import 'package:wallet/cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/icons.dart';
import 'package:wallet/tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on,size: 36.0,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home,size: 32.0,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings,size: 32.0,)),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('My',style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(width: 12.0),
                        Text('Cards',style: TextStyle(
                          fontSize: 30.0,
                        ),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                height: 200.0,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Cards(balance: 5250.23,cardNumber: 90732964,expiryMonth: 10,expiryYear: 24,color: Colors.deepPurple[300],),
                    Cards(balance: 1729.42,cardNumber: 87362964,expiryMonth: 05,expiryYear: 26,color: Colors.blue[300],),
                    Cards(balance: 18476.39,cardNumber: 99212964,expiryMonth: 02,expiryYear: 25,color: Colors.green[300],),
                  ],
                ),
              ),
              SizedBox(height: 25.0),

              SmoothPageIndicator(controller: _controller, count: 3,effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),),

              SizedBox(height: 25.0),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    btnIcon(iconImgPath: 'images/send-money.png', buttonText: 'send'),
                    btnIcon(iconImgPath: 'images/credit-card.png', buttonText: 'Pay'),
                    btnIcon(iconImgPath: 'images/bill.png', buttonText: 'Bill'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Tile(imgPath: 'images/statistics.png', tileName: 'Statistics', tileSubtile: 'Payments and Income'),
                    SizedBox(height: 10.0),
                    Tile(imgPath: 'images/transaction.png', tileName: 'Transaction', tileSubtile: 'Transaction History'),
                  ],
                ),
              ),
            ],
          ),
      ],
    ));
  }
}


