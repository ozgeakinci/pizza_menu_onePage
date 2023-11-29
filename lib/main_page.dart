import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_menu_page_flutter/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza',
            style: GoogleFonts.pacifico().copyWith(color: primaryText)),
        centerTitle: true,
        backgroundColor: primary,
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Merhaba Dünya',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
