import 'dart:math';
import 'dart:ui';
import 'package:designernewsapp/models/article.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:designernewsapp/widgets/article_page_widgets.dart';



class ArticleDetailPage extends StatelessWidget {

  //String url1,url2,url3;

  static var rnd = new Random();
   int n1 = rnd.nextInt(19);
   int n2 = rnd.nextInt(15);
  int n3 = rnd.nextInt(9);


  @override
  Widget build(BuildContext context) {

    final Article article = ModalRoute.of(context).settings.arguments;
   final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    var targetPlatform = Theme.of(context).platform;




    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                //this is the first container or the article image container

                //changing the font size based on platform for platform based adjustment
                (
                targetPlatform == TargetPlatform.android?
                (
                    articleTopWidget(context, devHeight, article.image, article.title,24,60)
                ):
                (
                    articleTopWidget(context, devHeight, article.image, article.title,32,80)
                )
                ),

                //this is the middle part of article page containing author image
                Positioned(
                  width: devWidth,
                  height: devHeight/3,
                  top: devHeight/3.2,
                  child: authorInfoWidget(devHeight, article.name, article.time, article.authorImage),
                ),

                //this is the last part of article page containing author image
                Positioned(
                  width: devWidth,
                  height: devHeight/1.8,
                  top: devHeight/2.25,
                  child: authorImagesWidget(devHeight, devWidth, article.name, article.time, n1, n2, n3)
                ),


              ],
            ),

          ],

        ),
      ),
    );
  }
}
