import 'package:clear1/utils/text_styles.dart';
import 'package:flutter/material.dart';
import '../utils/strings.dart';

class splashscreen extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  splashscreen({required this.goToPage , required this.duration});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.cyanAccent,
        padding: const EdgeInsets.only(top : 190, left: 52 , right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 66,bottom: 50,top: 0),
                    width: 150,
                    height: 150,
                    
                    child: Image.asset('assets/logo2.jpg',alignment: Alignment.center,),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  FractionallySizedBox(
                    child : Icon(
                      Icons.water_sharp,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                FractionallySizedBox(
                  child: RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: Strings.lifesplash,
                      style: TextStyles.splashTextStyle,
                     ),
                    ]
      ),
      ),
                ),
                  FractionallySizedBox(
                    child : Icon(
                      Icons.water_sharp,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
      ],
      ),
            ],
          ),
      ),
    );
  }
}
