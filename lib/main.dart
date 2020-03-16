import 'package:flutter/material.dart';

import 'whatsapp/screen/message.dart';
import 'whatsapp/screen/intro.dart';
import 'whatsapp/screen/whatsapp.dart';

import 'messenger/widget/nav.dart';
import 'messenger/screen/intro2.dart';

import 'facebook/screen/intro3.dart';
import 'facebook/widget/wid_tdface.dart';

import 'telegram/screen/intro4.dart';
import 'telegram/screen/telegram.dart';

import 'instagram/screen/intro5.dart';
import 'instagram/screen/instagram.dart';

import 'flutterChat/screen/homePage.dart';
import 'flutterChat/screen/inscription.dart';
import 'flutterChat/screen/connexion.dart';
import 'flutterChat/screen/confidentialite.dart';
import 'flutterChat/widget/cadScroll.dart';
import 'flutterChat/screen/homeDisc.dart';
import 'flutterChat/screen/contact.dart';
import 'flutterChat/screen/profilechat.dart';
import 'flutterChat/screen/appelAudio.dart';
import 'flutterChat/screen/appelVideo.dart';
import 'flutterChat/screen/discMsg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Réseaux sociaux',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Intro(),

      // home: Wid_tdface(),
      routes: {
        'introwhat': (context) => Intro(),
        'whatsapp': (context) => What(),
        'message': (context) => Message(),
        'messenger': (context) => IntroMsg(),
        'nav': (context) => Nav(),
        'introface': (context) => IntroFace(),
        'homeface': (context) => Wid_tdface(),
        'introtele': (context) => IntroTele(),
        'telegram': (context) => Telegram(),
        'introtele': (context) => IntroTele(),
        'telegram': (context) => Telegram(),
        'introinsta': (context) => IntroInsta(),
        'instagram': (context) => Insta(),
        'introChat': (context) => HomePage(),
        'conChat': (context) => Connexion(),
        'insChat': (context) => Inscription(),
        'confiChat': (context) => Confidentialite(),
        'cardChat': (context) => CardScroll(),
        'contChat': (context) => ContChat(),
        'discChat': (context) => HomeDisc(),
        'msgChat': (context) => DiscMsg(),
        'audioChat': (context) => Appel_Audio(),
        'videoChat': (context) => Appel_Video(),
        'profilchat': (context) => Profilchat(),
      },
    );
  }
}
