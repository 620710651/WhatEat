import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whateat/misc/colors.dart';
import 'package:whateat/widgets/app_large_text.dart';
import 'package:whateat/widgets/app_text.dart';
import 'package:whateat/widgets/responsive_botton.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                ),
                fit: BoxFit.cover
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "วันนี้"),
                      AppText(text: "กินอะไรดี?",size:30, ),
                      SizedBox(height: 10,),
                      Container(
                        width: 250,
                        child: AppText(
                          text: "วันนี้จะกินอะไรดี? ลองหาเมนูที่คุณสนใจตามวัตถุดิบที่คุณมี",
                          color: Colors.black,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 20,),
                      ResponsiveButton(width: 100,)
                    ],
                  ),

                ],
              ),
            ),
          );
      }),
    );
  }
}
