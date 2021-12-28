import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_content.dart';
import 'reusable_card.dart';

const reusableContainerColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFAD375B);
const bottomContainerHeight = 90.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum selectedGender {
  male,
  female
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(selectedGender gender) {
    if (gender == selectedGender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = reusableContainerColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = reusableContainerColor;
      }
    }
    if (gender == selectedGender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = reusableContainerColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
        maleCardColor = reusableContainerColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora de IMC',
        ),
        backgroundColor: Color(0xFF090C22),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(selectedGender.male);
                      });
                    },
                    child: ReusableCard(
                      cor: maleCardColor,
                      child: CardContent(
                        genderLabel: 'HOMEM',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(selectedGender.female);
                      });
                    },
                    child: ReusableCard(
                      cor: femaleCardColor,
                      child: CardContent(
                        genderLabel: 'MULHER',
                        genderIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cor: reusableContainerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cor: reusableContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cor: reusableContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            child: const Center(
              child: Text(
                'CALCULAR',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
