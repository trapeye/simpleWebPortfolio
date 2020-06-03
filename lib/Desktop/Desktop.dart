import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowan/assets.dart';
import 'dart:html' as html;
import 'package:portfoliowan/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 200),
      child: Stack(
        children: [
          Positioned(
            left: 320,
            bottom: 20,
            child: Container(
              height: 700,
              child: Image.asset(
                Assets.avatar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.rootOfFuture,
                        scale: 4,
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Syazwan',
                            style: TextStyle(
                              height: 0.9,
                              fontSize: 130,
                              color: Color(0xFFEBEBEC),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Nasir.',
                        style: TextStyle(
                          height: 0.9,
                          fontSize: 130,
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
                        height: 150,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(Assets.github)),
                            onPressed: () => html.window
                                .open(Constants.PROFILE_GITHUB, 'Syazwan'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(Assets.twitter)),
                            onPressed: () => html.window
                                .open(Constants.PROFILE_TWITTER, 'Syazwan'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(Assets.instagram)),
                            onPressed: () => html.window
                                .open(Constants.PROFILE_INSTAGRAM, 'Syazwan'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(Assets.facebook)),
                            onPressed: () => html.window
                                .open(Constants.PROFILE_FACEBOOK, 'Syazwan'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(Assets.medium)),
                            onPressed: () => html.window
                                .open(Constants.PROFILE_MEDIUM, 'Syazwan'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(Assets.linkedin)),
                            onPressed: () => html.window
                                .open(Constants.PROFILE_LINKEDIN, 'Syazwan'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 120,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //NavTab(),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 150,
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
                        style: TextStyle(fontSize: 60),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Learning Flutter from March 2020, Offering strong flutter skill and experience develop simple Mobile app and Web using framework Flutter.',
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
                          style:
                              TextStyle(fontSize: 40, color: Constants.yellow),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*class NavTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Main',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          'Portfolio',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          'Info',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ],
    );
  }
}*/
