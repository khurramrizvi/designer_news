import 'package:designernewsapp/views/article_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:designernewsapp/models/article.dart';
import 'package:flutter/rendering.dart';

//Navigation Bar Widget
Widget topNav(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Container(
        // padding: EdgeInsets.symmetric(horizontal: 2,vertical: 4),
        //decoration for outline of Icon
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey.shade300,
                width: 1,
                style: BorderStyle.solid
            ),

            borderRadius: BorderRadius.circular(8)

        ),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios,size: 16,),
          onPressed: (){},
        ),
      ),

      Material(
        elevation: 1,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          //decoration for outline of Icon
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),

            ),
            child: IconButton(
              icon: Icon(Icons.add,size: 30,),
              onPressed: (){},
            )
        ),
      ),
    ],
  );
}


//article widget for mobile
/*Widget articleWidgetMobile(BuildContext context, double devHeight){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: devHeight/3.8,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: articleList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: InkWell(
            splashColor: Colors.deepPurple[200],
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  settings: RouteSettings(
                      arguments: articleList[index]
                  ),
                  builder:  (context) {
                    return ArticleDetailPage();
                  }
              ));
            },
            hoverColor: Colors.deepPurple[400].withOpacity(0.4),
            borderRadius: BorderRadius.circular(8),
            child: Container(
              foregroundDecoration: BoxDecoration(
                  color: Colors.black.withAlpha(20),
                  backgroundBlendMode: BlendMode.colorDodge,
                  borderRadius: BorderRadius.circular(24)
              ),

              height: devHeight/3.8,
              width: 360,

              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(articleList[index].image),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24),
              ),

              child: Column(
                children: <Widget>[
                  //row for bookmark icon
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        child: Icon(Icons.bookmark_border, color: Colors.white,),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0),
                      child:
                      Flexible(
                        child: Text(articleList[index].title,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                      )
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  //Row with author image and other information

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage(articleList[index].authorImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),


                        Text(articleList[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Text(articleList[index].time,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),],
                    ),
                  )

                ],
              ),

            ),
          ),
        ),

      ),
      //child: articleListView(context),
    ),
  );
}*/


//articles widget
Widget articleWidget(BuildContext context, double devHeight, double fontSize, double sizedBoxSize,double sizedBoxAfterIcon, double sizedBoxAfterTitle){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: devHeight/3.8,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: articleList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: InkWell(
            splashColor: Colors.deepPurple[200],
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(
                settings: RouteSettings(
                  arguments: articleList[index]
                ),
                builder:  (context) {
                  return ArticleDetailPage();
                }
              ));
            },
            hoverColor: Colors.deepPurple[400].withOpacity(0.4),
            borderRadius: BorderRadius.circular(8),
            child: Container(
              foregroundDecoration: BoxDecoration(
                  color: Colors.black.withAlpha(20),
                  backgroundBlendMode: BlendMode.colorDodge,
                  borderRadius: BorderRadius.circular(24)
              ),

              height: devHeight/3.8,
              width: 360,

              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(articleList[index].image),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24),
              ),

              child: Column(
                children: <Widget>[
                  //row for bookmark icon
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        child: Icon(Icons.bookmark_border, color: Colors.white,),
                      )
                    ],
                  ),

                  SizedBox(
                    height: sizedBoxAfterIcon,
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0),
                      child:
                      Flexible(
                        child: Text(articleList[index].title,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                      )
                  ),

                  SizedBox(
                    height: sizedBoxAfterTitle,
                  ),

                  //Row with author image and other information

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage(articleList[index].authorImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),


                        Text(articleList[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Text(articleList[index].time,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),],
                    ),
                  )

                ],
              ),

            ),
          ),
        ),

      ),
      //child: articleListView(context),
    ),
  );
}



//recent article widget
Widget recentArticleWidget(double devHeight, String title, String url, String time, bool isTop){
  return InkWell(
    onTap: (){},
    hoverColor: Colors.deepPurple[800].withOpacity(0.2),
    splashColor: Colors.deepPurple[800].withOpacity(0.2),
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: devHeight+6,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              //info
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1.5,
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Top',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 16
                            ),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Text(
                          time,
                          style: TextStyle(
                              fontSize: 16
                          ),
                        )
                      ],
                    ),



                  ],
                ),
              ),
            ),

            Container(
              height: 100,
              width: 100,
              //image container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover
                )
              ),
            )
          ],

        ),
      ),


    ),
  );
}


//recent article widget for mobile
Widget recentArticleWidgetMobile(double devHeight, String title, String url, String time, bool isTop){
  return InkWell(
    onTap: (){},
    hoverColor: Colors.deepPurple[800].withOpacity(0.2),
    splashColor: Colors.deepPurple[800].withOpacity(0.1),
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: devHeight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              //info
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1.5,
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Top',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 16
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Text(
                          time,
                          style: TextStyle(
                              fontSize: 16
                          ),
                        )
                      ],
                    ),



                  ],
                ),
              ),
            ),

            Container(
              height: 100,
              width: 100,
              //image container
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover
                  )
              ),
            )
          ],

        ),
      ),


    ),
  );
}

