import 'package:flutter/material.dart';
import 'package:portfoliowan/assets.dart';
import 'package:portfoliowan/constants.dart';
import 'dart:html' as html;

class Mobile extends StatelessWidget {
  double constraint;
  Mobile(this.constraint);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.rootOfFuture,
            scale: 4,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Syazwan',
            style: TextStyle(
              height: 0.9,
              fontSize: constraint / 7,
              color: Color(0xFFEBEBEC),
            ),
          ),
          Text(
            'Nasir.',
            style: TextStyle(
              height: 0.9,
              fontSize: constraint / 7,
              color: Color(0xFFEBEBEC),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              color: Constants.yellow,
              height: 11,
              width: 70,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: SizedBox(
                    width: 40, height: 40, child: Image.asset(Assets.github)),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_GITHUB, 'Syazwan'),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: SizedBox(
                    width: 40, height: 40, child: Image.asset(Assets.twitter)),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_TWITTER, 'Syazwan'),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(Assets.instagram)),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_INSTAGRAM, 'Syazwan'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: SizedBox(
                    width: 40, height: 40, child: Image.asset(Assets.facebook)),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_FACEBOOK, 'Syazwan'),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: SizedBox(
                    width: 40, height: 40, child: Image.asset(Assets.medium)),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_MEDIUM, 'Syazwan'),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: SizedBox(
                    width: 40, height: 40, child: Image.asset(Assets.linkedin)),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_LINKEDIN, 'Syazwan'),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '- Introduction',
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Flutter Developer, \nbased in Malaysia, Johor',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 60),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Learning Flutter from March 2020, Offering strong flutter skill and experience develop simple Mobile app and Web using framework Flutter.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            onPressed: () {
              Constants.launchMailClient();
            },
            child: Text(
              'My Email',
              style: TextStyle(fontSize: 40, color: Constants.yellow),
            ),
          )
        ],
      ),
    );
  }
}
