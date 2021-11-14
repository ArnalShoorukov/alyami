import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: 'Products & Services',
            subTitle: "My Strong Arenas",
          ),
          /*Container(
            width: 800,
            height: 300,
            child: GridView.count(
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              crossAxisCount: 3,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index)),
            ),
          ),*/

          ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            }),
            child: Container(
              height: 300,
              width: 1000,
              child: ListView.builder(
                // Or apply these physics to make it work as expected
                //physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: services.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ServiceCard(index: index),
                  );
                },
                shrinkWrap: true,
              ),
            ),
          ),

          /*SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: 800,
              height: 300,
              child: ListView.builder(
                // Or apply these physics to make it work as expected
                //physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: services.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ServiceCard(index: index),
                  );
                },
                shrinkWrap: true,
              ),
            ),
          ),*/


          /* SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ServiceCard(index: index),
                  )),
          ),
           )*/
        ],
      ),
    );
  }
}
