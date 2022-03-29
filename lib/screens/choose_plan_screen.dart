import 'package:flutter/material.dart';
import '../utils/strings.dart';
import '../utils/text_styles.dart';
import '../widgets/custom.dart';
import 'measure.dart';

class ChoosePlanScreen extends StatelessWidget {
  ChoosePlanScreen({Key? key}) : super(key: key);

  List<String> values=[
    'assets/yellowfin_tuna.jpeg',
    'assets/dolphin1.jpg',
    'assets/jellyfish.jpg',
    'assets/squid.jpg',
    'assets/crab.jfif',
    'assets/angelfish-4.jpg',
    'assets/lobster.jpg',
    'assets/octopus.jpg',
    'assets/shark.jpg',
    'assets/penguin.jpg',
    'assets/seahorse.jpg',
    'assets/seal.jpg',
    'assets/bluewhale.jpeg',
    'assets/clownfish.jpg',
    'assets/codfish.JPG',
    'assets/conch.jpg',
    'assets/coral.jpg',
    'assets/cormorant.jpg',
    'assets/crocodile.jpg',
    'assets/eel.jpeg',
    'assets/elephantseal.jpg',
    'assets/otter.jpeg',
    'assets/pelican2.jpg',
    'assets/seaurchin.jpg',
    'assets/seaanemone.jpg',
    'assets/albacore_tuna.jpg',
    'assets/angelfish-4.jpg',
    'assets/lobster.jpg',
    'assets/anchovy.jpg',
    'assets/blue_crab.jpg',
    'assets/dottyback.jpg',
    'assets/dragonets.jpg',
    'assets/dugong.jpg',
    'assets/Dungeness_Crab_47.jpg',
    'assets/walrus.jpg',

    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
        body: Stack(
          fit: StackFit.expand,
          children:<Widget> [
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.40,
              child: Container(
                child: Stack(
                  children:<Widget>[
                    Image.asset("assets/front3.jpg",width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Column(
                      children: <Widget>[
                        customscreen(
                          opacity : 1,
                        ),
                        Expanded(
                          child: Align(
                            alignment : Alignment(0,-0.6),
                            child : Text(
                              Strings.welcome,
                              style: TextStyles.welcomeTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.68,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14,),
              child: Text(
                Strings.lifebelow,
                style: TextStyles.lifebelowTextStyle,
              ),
            ),
               Expanded(
                child: Container(
                  child: GridView.builder(
                    itemCount: 34,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation : 10,
                        child: Center(
                          child: Image.asset(values[index],
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.7,
                    ),

                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(35),),
                    color: Color(0xFFB98959),
                  ),
                ),
              ),
           ],
              ),
            ),
            Positioned(
              bottom: -30,
              right: -30,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => measurescreen(),
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
