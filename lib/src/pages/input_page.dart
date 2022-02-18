import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles.dart';
import '../widgets/bubble_indicator.dart';
import '../widgets/reusable_card.dart';
import '../widgets/round_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int core = 123;
  int upperBody = 45;
  int lowerBody = 315;

  get fontSize => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BODY INFORMATION WIDGET',
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Bubble indicators
            Center(
              child: Flexible(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Stack(
                          children: [
                            BubbleIndicator(
                              bodyIndicator: upperBody,
                              title: 'Upper Body',
                            ),
                            Positioned(
                                top: 165,
                                child: SvgPicture.asset(
                                    'assets/images/graph.svg')),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Stack(
                          children: [
                            BubbleIndicator(
                              bodyIndicator: core,
                              title: 'Core',
                            ),
                            Positioned(
                                top: 165,
                                child: SvgPicture.asset(
                                    'assets/images/graph.svg')),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Stack(
                          children: [
                            BubbleIndicator(
                              bodyIndicator: lowerBody,
                              title: 'Lower Body',
                            ),
                            Positioned(
                                top: 145,
                                left: 30,
                                child: SvgPicture.asset(
                                    'assets/images/graph.svg')),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            // Core widget
            Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: ReusableCard(
                  onPress: () {},
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Core',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            core.toString(),
                            style: kNumberTextStyle,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Ibs',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: kActiveTrackColor,
                          inactiveTickMarkColor: kInactiveTickMarkColor,
                          thumbColor: kThumbColor,
                          overlayColor: kOverlayColor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 8.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20.0),
                        ),
                        child: Slider(
                          value: core.toDouble(),
                          min: 0.0,
                          max: 350.0,
                          label: '$core',
                          onChanged: (double newValue) {
                            setState(() {
                              core = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )),
            // Upper and Lower Body widget
            Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ReusableCard(
                      onPress: () {},
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Upper Body',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                upperBody.toString(),
                                style: kNumberTextStyle,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Ibs',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    upperBody--;
                                  });
                                },
                              ),
                              // Giving Spaces between two buttons
                              SizedBox(
                                width: 8.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      upperBody++;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: ReusableCard(
                      onPress: () {},
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Lower Body',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                lowerBody.toString(),
                                style: kNumberTextStyle,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Ibs',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    lowerBody--;
                                  });
                                },
                              ),
                              // Giving Spaces between two buttons
                              SizedBox(
                                width: 8.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      lowerBody++;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    )),
                  ],
                )),
            // Button Bottom
          ],
        ));
  }
}
