import 'package:flutter/material.dart';

Image? getSocialMediaIcon(String link) {
  const String statickLink = "assets/";
  if (link.contains("facebook")) {
    return const Image(
      image: AssetImage("${statickLink}facebook.png"),
      width: 35.0,
    );
  } else if (link.contains("instagram")) {
    return const Image(
      image: AssetImage("${statickLink}instagram.png"),
      width: 35.0,
    );
  } else if (link.contains("instagram")) {
    return const Image(
      image: AssetImage("${statickLink}twitter.png"),
      width: 35.0,
    );
  } else {
    return null;
  }
}
