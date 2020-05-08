import 'package:designernewsapp/widgets/main_page_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  @override


  Widget build(BuildContext context) {

    double devHeight, devWidth;
    devHeight = MediaQuery.of(context).size.height;
    devWidth = MediaQuery.of(context).size.width;

    var targetPlatform = Theme.of(context).platform;

    return Container(
      //color: Colors.white12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        //Top Navigation Bar
          topNav(),

          SizedBox(
            height: 46,
          ),

          //Heading
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Top articles",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32
              ),),
          ),

          SizedBox(
            height: 25,
          ),

          (
              targetPlatform != TargetPlatform.android?
              (
                  articleWidget(context, devHeight,20,40,40,24)
              ) :(
                  articleWidget(context, devHeight,26,60,60,32)
              )
          ),
          //ListView Article Widget



          SizedBox(
            height: 40,
          ),

          //Recently Text
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("Recently",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32
              ),),
          ),

          SizedBox(
            height: 14,
          ),

          //Articles with details
          recentArticleWidget(devHeight/7,
              'Instagram presented a rating of the best photos',
              'https://images.pexels.com/photos/2471235/pexels-photo-2471235.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              , '48 min ago',
              true),


          SizedBox(
            height: 12,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Divider(
              thickness: 1,
            ),
          ),


          SizedBox(
            height: 12,
          ),


          recentArticleWidget(devHeight/7,
              'Cute ideas and solutions for landscaping the office',
              'https://images.pexels.com/photos/2011824/pexels-photo-2011824.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              , '20 min ago',
              true),

        ],
      ),
    );
  }
}
