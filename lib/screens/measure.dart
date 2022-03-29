//import 'package:url_launcher/url_launcher.dart';
import 'package:clear1/utils/strings.dart';
import 'package:clear1/utils/text_styles.dart';
import 'package:flutter/material.dart';


class measurescreen extends StatelessWidget {


  List<String> value1 = [
    'We must reduce our plastic dependency',
    'Mind Your Carbon Footprint and Reduce Energy Consumption',
    'Make Safe, Sustainable Seafood Choices',
    'Dont Purchase Items That Exploit Marine Life',
    'Support Organizations Working to Protect the Ocean',
    'Influence Change in Your Community',
    'Educate Yourself About Oceans and Marine Life',
    'Avoid chemical fertilizers',
    'Recycle',
    'Diminish discharge of untreated sewage',
    'Increase funding for marine pollution prevention and control',

  ];

  List<String> value2 = [
    'Plastics that end up as ocean debris contribute to habitat destruction and entangle and kill tens of thousands of marine animals each year. To limit your impact, carry a reusable water bottle, and store food in nondisposable containers, bring your own cloth tote or other reusable bag when shopping, and recycle whenever possible.',
    'Reduce the effects of climate change on the ocean by leaving the car at home when you can and being conscious of your energy use at home and work. A few things you can do to get started today: Switch to compact fluorescent light bulbs, take the stairs, and bundle up or use a fan to avoid oversetting your thermostat.',
    'Global fish populations are rapidly being depleted due to demand, loss of habitat, and unsustainable fishing practices. When shopping or dining out, help reduce the demand for overexploited species by choosing seafood that is both healthful and sustainable.',
    'Certain products contribute to the harming of fragile coral reefs and marine populations. So Avoid purchasing items such as coral jewelry, tortoiseshell hair accessories (made from hawksbill turtles), and shark products.',
    'Many institutes and organizations are fighting to protect ocean habitats and marine wildlife. Find a national organization and consider giving financial support or volunteering for hands-on work or advocacy. If you live near the coast, join up with a local branch or group and get involved in projects close to home.',
    'Research the ocean policies of public officials before you vote or contact your local representatives to let them know you support marine conservation projects. Consider patronizing restaurants and grocery stores that offer only sustainable seafood, and speak up about your concerns if you spot a threatened species on the menu or at the seafood counter.',
    'All life on Earth is connected to the ocean and its inhabitants. The more you learn about the issues facing this vital system, the more you’ll want to help ensure its health — then and share that knowledge to educate and inspire others.',
    'The chemical fertilizer that you use on your lawn or in your garden can eventually make its way to the ocean through rivers, rainwater, and other waterways—even if you live far from the coast. To reduce the chance of leaching chemical fertilizer and polluting the ocean, opt for natural fertilizer options like compost, bone meal, and aged manure.',
    'Recycling is a process that converts used materials into new ones, keeping waste out of trash cans, gutters, and landfills, where they could be taken by wind or water to the ocean. Reach out to your local recycling plant or waste management operation for an approved list of recyclables.',
    'Increase treatment, recycling and reuse of wastewater. Connect all households to the sewerage system and reduce stormwater-related pollution. Treated wastewater should be seen as a resource which, if used wisely and safely to avoid health problems, can be very beneficial in particular in small islands where fresh water resources are scarce.',
    'Fighting pollution needs more budgets as pollution control programs range from charging fees for ecosystem services, to introducing market - based incentives, applying the “polluter pays” principle whereby those who produce pollution should bear the costs of managing it. These incentives might include subsidies for pollution control, permit systems for “green” businesses with pollution, deposit-refund systems, and pricing approaches.',


  ];

  List<String> value3 = [
    'assets/news1.jpg',
    'assets/news2.jpg',
    'assets/news44.jpg',
    'assets/news55.jpg',
    'assets/news66.jpg',
    'assets/news7.jpg',
    'assets/news1.jpg',
    'assets/news2.jpg',
    'assets/news44.jpg',

  ];


  List<String> value4 = [
    'International Sea Level Satellite Takes Over From Predecessor',
    'Save the seas: African countries appeal funding for oceans at UNEA5',
    'Sentinel-6 spacecraft becomes an official ocean-monitoring satellite',
    'India,Maldives launch initiatives to expand security ties to protect Indian Ocean',
    'How oceans play a key role in the fight against climate change',
    'Why an international treaty for the high seas is crucial to biodiversity ',
    'International Sea Level Satellite Takes Over From Predecessor',
    'Save the seas: African countries appeal funding for oceans at UNEA5',
    'Sentinel-6 spacecraft becomes an official ocean-monitoring satellite',

  ];


  // List<String> value5 = [
  //   'https://climate.nasa.gov/news/3154/international-sea-level-satellite-takes-over-from-predecessor/',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Stack(
        fit: StackFit.expand,
        children:<Widget> [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.10,
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14,),
            child: Text(
              Strings.mesuretake,
              style: TextStyles.measureTextStyle,
              textAlign: TextAlign.center,
              ),
            ),
                Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,),
                            child: SizedBox(
                              height: 320,
                              child : ListView.builder(
                                itemCount: 9,
                                scrollDirection: Axis.horizontal,
                                controller: ScrollController(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Container(
                                  height: 100,
                                  width: 200,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(value3[index],
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: InkWell(
                                          // onTap: (){
                                          //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => value4[index],
                                          //   ),
                                          //   );
                                          // },
                                         // onTap: () { launch('https://pub.dev/packages/url_launcher')},
                                          // splashColor: Colors.black,
                                          // highlightColor: Colors.blue,
                                          child : Container(
                                            child: Center(
                                              child: Text(
                                                value4[index],
                                                style: TextStyles.newsTextStyle,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: GridView.builder(
                              itemCount: 11,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index){
                                return Card(
                                  margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                                  elevation: 60,
                                  color: Colors.cyanAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)
                                  ),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 36,right: 30,left: 20),
                                      child : Column(
                                        children: [
                                          Text(
                                            value1[index],
                                            style: TextStyles.fontTextStyle,
                                            textAlign: TextAlign.center,
                                          ),
                                          Icon(
                                            Icons.water_sharp,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 9,top: 25),
                                            child: Text(
                                              value2[index],
                                              style: TextStyles.dataTextStyle,
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                        ],
                                      ),
                                      ),
                                  ),
                                );
                              },
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                childAspectRatio: 0.7,
                              ),
                            ),
                          ),
                        ],
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
        ],
      ),
    );
  }
}

