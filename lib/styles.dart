import 'package:flutter/material.dart';

// k meaning constant
const kBackgroundColor = Colors.white30;
const kActiveCardColor = Color(0xff5D64B6);
const kPrimaryColor = Color(0xFF111328);
const kScaffoldBackgroundColor = Color(0x80ffffff);
const kActiveTrackColor = Color(0xFFEB1555);
const kInactiveTickMarkColor = Color(0xFF8D8E98);
const kThumbColor = Color(0XFFEB1555);
const kOverlayColor = Color(0X29EB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 28.0,
  color: Colors.black54,
);

const kNumberTextStyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.w900,
);

// From the Tonal Challenge

const bubbleDiameter = 272;

const bubbleBoxDecoration = BoxDecoration(
  color: Color(0xff53a99a),
  shape: BoxShape.circle,
  boxShadow: [
    BoxShadow(
      offset: Offset(0, 27),
      blurRadius: 33,
      color: Color(0x3827ae96),
    )
  ],
);

const labelTextStyle = TextStyle(
  fontFamily: 'Helvetica',
  fontWeight: FontWeight.bold,
  fontSize: 19,
  color: Colors.white,
);

const weightTextStyle = TextStyle(
  fontFamily: 'League Gothic',
  fontSize: 127,
  color: Colors.white,
);

const unitTextStyle = TextStyle(
  fontFamily: 'League Gothic',
  fontSize: 38,
  color: Color(0x80ffffff),
);
