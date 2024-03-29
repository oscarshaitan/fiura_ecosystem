// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCj2z798ludkf6qTvmsL2P3XLKZ4XoWqIw',
    appId: '1:399976051488:web:4236659e78cb92df1c9d45',
    messagingSenderId: '399976051488',
    projectId: 'fiurapp',
    authDomain: 'fiurapp.firebaseapp.com',
    databaseURL: 'https://fiurapp.firebaseio.com',
    storageBucket: 'fiurapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfalWDaxYfvcAf5b6ON98_-smKoxiKunQ',
    appId: '1:399976051488:android:e078a9ff20b501651c9d45',
    messagingSenderId: '399976051488',
    projectId: 'fiurapp',
    databaseURL: 'https://fiurapp.firebaseio.com',
    storageBucket: 'fiurapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWL1y6MAX0ue26MGTXdSlMgha5l27iaEo',
    appId: '1:399976051488:ios:61ea8d7848ae9a091c9d45',
    messagingSenderId: '399976051488',
    projectId: 'fiurapp',
    databaseURL: 'https://fiurapp.firebaseio.com',
    storageBucket: 'fiurapp.appspot.com',
    iosClientId: '399976051488-6klfabmon1fskvppkv4orjmt7r1c0mau.apps.googleusercontent.com',
    iosBundleId: 'com.AllegorIT.fiura.fiuraEcosystem',
  );
}
