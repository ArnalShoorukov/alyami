import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mr. Khursheed Ali Gouhar',
                      style: textName,
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      'Manager Transformer and Switchgear Section'
                      '\ncontact: 0509058425'
                      '\nEmail: khursheed@hamadalyami.com',
                      style: textDesc,
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding * 3),
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Engr. Hassan Javed',
                      style: textName,
                    ),
                    SizedBox(height: kDefaultPadding),

                    Text(
                      'Senior Engineer Transformer and Switchgear Section'
                      '\ncontact: 0568514697'
                      '\n Email: hassan@hamadalyami.com ',
                      style: textDesc,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Container(
            height: 2,
            width: double.maxFinite,
            color: Colors.grey,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'General Inquiries',
                      style: textName,
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      'Manager Transformer and Switchgear Section'
                      '\ncontact: 0509058425'
                      '\nEmail: khursheed@hamadalyami.com ',
                      style: textDesc,
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding * 3),
              Container(
                width: 300,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Asad',
                      style: textName,
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      'Project Engineer'
                      '\nEmail: electrical@hamadalyami.com ',
                      style: textDesc,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/facebook.jpeg",
                name: 'Facebook',
                press: () {
                  _launchURL('https://www.facebook.com/HAYCOsaudia/');
                },
              ),
              SocalCard(
                color: Color(0xFFE4FFC7),
                iconSrc: "assets/images/twitter.jpeg",
                name: 'Twitter',
                press: () {
                  _launchURL('https://twitter.com/HAYCOsaudia');
                },
              ),
              SocalCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/ariba.jpg",
                name: 'Ariba Network',
                press: () {
                  _launchURL(
                      'https://service.ariba.com/Discovery.aw/ad/profile?key=AN01535620639'
                      '');
                },
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Full Name",
                hintText: "Enter Your Full Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              maxLines: 5,
              minLines: 3,
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
