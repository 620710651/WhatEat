import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whateat/pages/navpages/home_page.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 90,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.orange
      ),
      child: Row(
        children: [
          OutlinedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HomePage(),
            )),
              child: Image.asset("img/son2.png", )
          ),

        ],
      ),


    );
  }
}
