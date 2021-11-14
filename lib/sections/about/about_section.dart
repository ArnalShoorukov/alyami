import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import 'components/about_image.dart';
import 'components/about_section_text.dart';
import 'components/about_text.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  final List<String> clientsImage = [
    'assets/images/one.png',
    'assets/images/two.jpg',
    'assets/images/three.png',
    'assets/images/four.png',
    'assets/images/five.png',
    'assets/images/six.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutText(text: "About \ncompany"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Technical service provider and a leader in primary & secondary power distribution solutions with over 15 years of experience. Specializing in testing and repair of transformers, Unit sub-stations (USS), voltage switchgear, Ring Main Unit (RMU) & Breakers for utility, industrial and commercial applications in Saudi Arabia.\n   Our team of engineers & technicians are highly experienced and ready to provide expertise on site for testing, commissioning, maintenance, installation, oil filtration & repair services for transformers, Unit substations, switch gears and protection systems.",
                ),
              ),
              //ExperienceCard(numOfExp: "08"),
              AboutImage(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Hamad Ali Al Yami Establishment for Contracting was established with only motive to avail the BEST services for its customers through its services, Enterprise incorporates engineers and professional technicians who are highly experienced In testing, commissioning, maintenance, installation & repair services for transformers, switch gears, protection system & use of different equipments based on applications of new technology. Our skilled craftsmen have years of experience performing maintenance and repair of Electric equipment.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AboutText(text: "Our \nClients"),
              SizedBox(width: kDefaultPadding * 2),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 800,
                  height: 200,
                  child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 1.5),
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.all(2),
                            child: Container(
                              child: Image.asset(clientsImage[index], fit: BoxFit.fitHeight, ),
                            ));
                      }),
                ),
              ),
             /* MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
