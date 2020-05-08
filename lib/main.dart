import 'package:designernewsapp/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Designer News',
  theme: ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Colors.purple[800],
    accentColor: Colors.purple[800].withOpacity(0.8),
    textTheme: GoogleFonts.questrialTextTheme()
  ),
  home: MyNewsApp(),
)
);


class MyNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(
              Icons.event_note,
              color: Theme.of(context).accentColor,
            ), onPressed: (){}),

            IconButton(icon: Icon(
                Icons.search
            ), onPressed: null),

            IconButton(icon: Icon(
                Icons.bookmark_border
            ), onPressed: null),

            IconButton(icon: Icon(
                Icons.person_outline
            ), onPressed: null)
          ],
        ),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SafeArea(
          child: SingleChildScrollView(
              child: MainPage()
          ),
        ),
      ),

    );
  }
}
