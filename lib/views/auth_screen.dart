import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/widgets/auth_card.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 166, 165, 0.5),
                  Color.fromRGBO(666, 165, 245, 1.0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView (
                        child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 45),
                    Container(
                      margin: EdgeInsets.only(bottom : 20.0),
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 70,
                      ),
                      transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow.shade700,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(2, 10),
                          ),
                        ],
                      ),
                      child: Text(
                        'Minha loja',
                        style: TextStyle(
                          color: Theme.of(context).accentTextTheme.headline6.color,
                          fontSize: 45,
                          fontFamily: 'Anton',
                        ),
                      ),
                    ),
                    AuthCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
