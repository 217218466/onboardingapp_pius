import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Image.asset('assets/back1.png'), Text("Skip")],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 34.0),
              constraints: BoxConstraints.expand(height: 300.0),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.65,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/girl1.png"),
                      fit: BoxFit.contain)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.60,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  "Visible Changes here",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15.0, right: 15.0),
                onPressed: () {},
                child: Text("get my plan".toUpperCase(),
                  style: TextStyle(fontSize: 14, fontFamily: "Lato"),),
                color: _colorFromHex('A75DB4'),
                textColor: Colors.black87,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Sign In",style:
              TextStyle(color: _colorFromHex('#737CA2'),
              fontSize: 18.0,
                fontFamily: "Lato"
              )),
            )
          ],
        ),
      ),
    );

  }
  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}