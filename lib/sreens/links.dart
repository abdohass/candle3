import 'dart:core';

import 'package:flutter/material.dart';
import '../controller/localization.dart';
import '../sreens/firstscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatefulWidget {
  const Links({super.key});

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  // Method to launch URLs
  void _launchUrl(String url) async {
    // (await canLaunchUrl((Uri.parse(url))) {
    //     await launch(url);
    //   }
    //     throw 'Could not launch $url';
    //   }
    // }
   await launchUrl(Uri.parse(url));


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text(" ${getLang(context, "Links")}")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _launchUrl("https://www.facebook.com/Candles-soap-making-103006038753456/");
              },
              child: Text
                ((" ${getLang(context, "Open Facebook Page")}")),
            ),
            ElevatedButton(
              onPressed: () {
                _launchUrl("https://youtube.com/c/AhmedHamedelsaraya");
              },
              child: Text ((" ${getLang(context, "Open YouTube Channel")}"))
                ,
            ),
          ],
        ),
      ),
    );
  }
}
