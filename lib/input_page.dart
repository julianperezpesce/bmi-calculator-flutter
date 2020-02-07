import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_reusable.dart';
import 'icon_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardReusable(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: IconCard(
                        texto: 'MALE', awesomeIconCard: FontAwesomeIcons.mars),
                    colores: selectedGender == Gender.male
                        ? kActiveColorCard
                        : kInactiveColorCard,
                  ),
                ),
                Expanded(
                  child: CardReusable(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardChild: IconCard(
                        awesomeIconCard: FontAwesomeIcons.venus,
                        texto: 'FEMALE',
                      ),
                      colores: selectedGender == Gender.female
                          ? kActiveColorCard
                          : kInactiveColorCard),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardReusable(
              colores: kActiveColorCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kHeightStyle,
                      ),
                      Text(
                        ' cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.pinkAccent,
                      overlayColor: Color(0x29eb1555),
                      thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 16),
                      overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 26),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Colors.pinkAccent,
                      inactiveColor: Colors.pink[100],
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardReusable(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: kTextStyle,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
//                          Text(
//                            ' kg',
//                            style: TextStyle(
//                              fontSize: 17,
//                              color: Colors.white70,
//                            ),
//                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              /*IconButton(
                                icon: Icon(
                                  Icons.remove_circle_outline,
                                  color: Colors.pinkAccent,
                                  size: 30,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.pinkAccent,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),*/
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),

                        ],
                      ),
                      colores: kActiveColorCard
                  ),
                ),
                Expanded(
                  child: CardReusable(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: kTextStyle,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
//                          Text(
//                            ' kg',
//                            style: TextStyle(
//                              fontSize: 17,
//                              color: Colors.white70,
//                            ),
//                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              /*IconButton(
                                icon: Icon(
                                  Icons.remove_circle_outline,
                                  color: Colors.pinkAccent,
                                  size: 30,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.pinkAccent,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),*/
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),

                        ],
                      ),
                      colores: kActiveColorCard),
                ),

              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomHeight,
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon,@required this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Colors.pinkAccent,
      constraints: BoxConstraints.tightFor(
        width: 36.0,
        height: 36.0,
      ),
    );
  }
}
