import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key key,
    this.text
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
