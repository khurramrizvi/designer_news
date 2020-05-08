import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

List<String> imageUrl = [
  'https://images.pexels.com/photos/2011824/pexels-photo-2011824.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/2471235/pexels-photo-2471235.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1762973/pexels-photo-1762973.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/3704997/pexels-photo-3704997.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/2911545/pexels-photo-2911545.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
  'https://images.pexels.com/photos/3045828/pexels-photo-3045828.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
  'https://images.pexels.com/photos/2911545/pexels-photo-2911545.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
  'https://images.pexels.com/photos/3045828/pexels-photo-3045828.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
  'https://images.pexels.com/photos/3418400/pexels-photo-3418400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/2011824/pexels-photo-2011824.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/2471235/pexels-photo-2471235.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/3530054/pexels-photo-3530054.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/1762973/pexels-photo-1762973.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/3704997/pexels-photo-3704997.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/2911545/pexels-photo-2911545.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
  'https://images.pexels.com/photos/3045828/pexels-photo-3045828.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
  'https://images.pexels.com/photos/3418400/pexels-photo-3418400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  'https://images.pexels.com/photos/2851568/pexels-photo-2851568.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
];

Widget articleTopWidget(BuildContext context, devHeight, String image, String title, double titleFontSize, double sizedBoxSize) {
  return Container(
    height: devHeight/3,
    decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image,)
      ),
    ),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.2,sigmaY: 1.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          children: <Widget>[

            //custom nav bar
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
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
                      icon: Icon(Icons.arrow_back_ios,size: 16,
                        color: Colors.white,),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),

                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.bookmark_border,
                  ),
                  iconSize: 40,
                  color: Colors.white.withOpacity(1),
                ),

              ],
            ),

            SizedBox(
              height: sizedBoxSize,
            ),

            Text('FROM SPONSORS',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),),

            SizedBox(
              height: 10,
            ),

            Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold
              ),),


          ],
        ),
      ),
    ),
  );
}


//author widget with following text
Widget authorInfoWidget(double devHeight, String name, String time, String url){
  return Container(
    height: devHeight/4,

    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
        color: Colors.grey[50]
    ),

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal:48.0,vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //1st row with image and name
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage(url),
                        fit: BoxFit.cover
                    )
                ),
              ),

              SizedBox(
                width: 16,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  Text(time,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45
                    ),
                  ),


                ],
              ),

              SizedBox(
                width: 16,
              ),

            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black.withOpacity(0.4),
                      width: 1,
                      style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.check,
                        size: 14,
                        color: Colors.deepPurple,),

                      SizedBox(

                        width: 4,
                      ),


                      Text('Following',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.deepPurple
                        ),),
                    ],
                  ),
                ),

              )

            ],
          )

        ],
      ),
    ),
  );
}


//article detail widget with 3 images
Widget authorImagesWidget(double devHeight,double devWidth, String name, String time, int n1,int n2, int n3){
return Material(
  shadowColor: Colors.black,
  elevation: 15,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(36),
    topLeft: Radius.circular(36),
  ),
  child: Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(36),
          topLeft: Radius.circular(36),
        ),
        color: Colors.white
    ),

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[


          //column with article information
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Container(
              height: devHeight/10,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text(
                    'Cool news for designers',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 24,
                      wordSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    'Our service presented a set od 3D-unusual composition for free use.',
                    style: TextStyle(
                      wordSpacing: 1.2,
                      color: Colors.black45,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Container with images

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
                color: Colors.white,
                height: devHeight/2.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //first long image container
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          height: devHeight/2.7,
                          width: devWidth/3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(imageUrl[n1])
                              )
                          ),
                        ),

                      ],

                    ),


                    //Column with 2 images
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: Container(
                            height: devHeight/6,
                            width: devWidth/3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(imageUrl[n2])
                                )
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),

                        Container(
                          height: devHeight/6,
                          width: devWidth/3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(imageUrl[n3])
                              )
                          ),
                        )



                      ],

                    ),

                  ],
                )
            ),

          ),
        ],
      ),
    ),


  ),
);
}