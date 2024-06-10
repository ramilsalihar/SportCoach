// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDomeB00opvu7TF8mpfRgVLwrDUqLo8S2E',
    appId: '1:696950569158:web:4eb51a50240e7b6296ffc7',
    messagingSenderId: '696950569158',
    projectId: 'sport-coach-df352',
    authDomain: 'sport-coach-df352.firebaseapp.com',
    storageBucket: 'sport-coach-df352.appspot.com',
    measurementId: 'G-8ZFDKDPMYN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQjpYX0j-KsS9lOiqW08HwgtW-1vizwlM',
    appId: '1:696950569158:android:60de2d7dc21f4fba96ffc7',
    messagingSenderId: '696950569158',
    projectId: 'sport-coach-df352',
    storageBucket: 'sport-coach-df352.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYG17aJ9E3NyFASAfPv1qVQmU8gbRRY0A',
    appId: '1:696950569158:ios:7ab39c7291a672be96ffc7',
    messagingSenderId: '696950569158',
    projectId: 'sport-coach-df352',
    storageBucket: 'sport-coach-df352.appspot.com',
    iosBundleId: 'com.example.sportCoach',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYG17aJ9E3NyFASAfPv1qVQmU8gbRRY0A',
    appId: '1:696950569158:ios:7ab39c7291a672be96ffc7',
    messagingSenderId: '696950569158',
    projectId: 'sport-coach-df352',
    storageBucket: 'sport-coach-df352.appspot.com',
    iosBundleId: 'com.example.sportCoach',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDomeB00opvu7TF8mpfRgVLwrDUqLo8S2E',
    appId: '1:696950569158:web:5486641ba06b596996ffc7',
    messagingSenderId: '696950569158',
    projectId: 'sport-coach-df352',
    authDomain: 'sport-coach-df352.firebaseapp.com',
    storageBucket: 'sport-coach-df352.appspot.com',
    measurementId: 'G-ECQ3XYGK18',
  );

}