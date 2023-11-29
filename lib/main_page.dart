import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_menu_page_flutter/colors.dart';
import 'package:pizza_menu_page_flutter/widget/chip.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    final double screenHeight = screenSize.size.height;
    final double screenWidth = screenSize.size.width;

    print(screenHeight);
    print(screenWidth);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza',
            style: GoogleFonts.pacifico().copyWith(color: primaryText)),
        centerTitle: true,
        backgroundColor: primary,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 15),
            child: Text(
              'Beef Cheese',
              style: TextStyle(
                  fontSize: 36, color: primary, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 30),
            child: Image.asset('img/pizza_resim.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 30),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButtonChip(content: 'Cheese'),
                TextButtonChip(content: 'Olive'),
                TextButtonChip(content: 'Sausage'),
                TextButtonChip(content: 'Pepper')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  '20 min',
                  style: TextStyle(
                      fontSize: 22,
                      color: secondryText,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Delivery',
                    style: TextStyle(
                        fontSize: 22,
                        color: secondryText,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Meat lover, get ready to meet your pizza !',
                  style: TextStyle(
                    fontSize: 22,
                    color: secondryText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight / 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '\$ 5.98 ',
                style: TextStyle(
                    fontSize: screenWidth / 11,
                    color: primary,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: screenWidth / 2,
                height: screenHeight / 15,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(color: primaryText, fontSize: 18),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
