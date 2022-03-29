import 'package:flutter/material.dart';
import 'package:clear1/screens/choose_plan_screen.dart';
import 'package:clear1/widgets/custom.dart';
import '../utils/strings.dart';
import '../utils/text_styles.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
        Image.asset("assets/front.jfif",
        height: height,
        fit: BoxFit.fitHeight,


        ),
        Column(
          children: <Widget>[
            customscreen(),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), primary: Colors.blue.withOpacity(0.8)),
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChoosePlanScreen(),
              ),
              );
              },
              child: Container(
                width: 140,
                height: 140,
                alignment: Alignment.center,
                decoration: const BoxDecoration(shape: BoxShape.circle),

                child: ElevatedButton.icon(
                  icon:  Icon(
                    Icons.image,
                    size: 20,
                    color: Colors.yellowAccent,
                  ),
                  label: const Text(
                    'Start >>',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChoosePlanScreen(),
                  ),
                  );
                    },
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0, right: 32, left: 32,),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: Strings.INFO_LINE,
                      style: TextStyles.infoLineTextStyle,
                    ),

                    TextSpan(text: "\n"),
                    TextSpan(text: "\n"),
                    TextSpan(text: "\n"),
                    TextSpan(text: "\n"),
                    TextSpan(text: "\n"),
                    TextSpan(text: "\n"),
                    TextSpan(text: "\n"),



                    TextSpan(
                      text: Strings.NEXT_PAGE,
                      style: TextStyles.nextLineTextStyle,
                    ),

                    TextSpan(text: "\n"),
                  ]
              ),
              ),
            ),
          ],
        ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChoosePlanScreen(),
                ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFD3A070).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4,-0.4),
                  child: Icon(Icons.arrow_forward,
                  color: Colors.white,
                  size: 60,),
                ),
              ),
            ),
          ),
       ],
      ),
    );
  }
}
