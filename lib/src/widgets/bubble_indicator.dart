import 'package:flutter/material.dart';
import 'package:tonal_challenge/styles.dart';

class BubbleIndicator extends StatelessWidget {
  const BubbleIndicator({
    Key? key,
    required this.bodyIndicator,
    required this.title,
  }) : super(key: key);

  final int bodyIndicator;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 136.0,
      backgroundColor: Color(0xff53a99a),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: labelTextStyle,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            bodyIndicator.toString(),
            style: weightTextStyle,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            'Ibs',
            style: unitTextStyle,
          ),
        ],
      ),
    );
  }
}
