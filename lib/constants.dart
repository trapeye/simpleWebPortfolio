import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Constants {
  static const PROFILE_MEDIUM = 'https://medium.com/@wankechikk03';
  static const PROFILE_LINKEDIN =
      'https://www.linkedin.com/in/syazwan-nasir-aa1264181/';
  static const PROFILE_FACEBOOK = 'https://www.facebook.com/mohdsyazwan.nasir';
  static const PROFILE_GITHUB = 'https://github.com/trapeye/';
  static const PROFILE_TWITTER = 'https://twitter.com/trapeye2';
  static const PROFILE_INSTAGRAM = 'https://www.instagram.com/wan_hahaha/';
  static const Color yellow = Color(0xFFFDCA01);

  static void launchMailClient() async {
    const mailUrl = 'mailto:syazwan03nasir@gmail.com?subject=Hai wan :D';
    try {
      await launch(mailUrl);
    } catch (e) {}
  }
}
