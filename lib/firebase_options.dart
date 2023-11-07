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
        return macos;
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
    apiKey: 'AIzaSyCGwS36RvN29q073_uTns___glp-_t-KbY',
    appId: '1:576116319513:web:5a7de4cd304e3b9a345188',
    messagingSenderId: '576116319513',
    projectId: 'spotify-clone-d7b32',
    authDomain: 'spotify-clone-d7b32.firebaseapp.com',
    storageBucket: 'spotify-clone-d7b32.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMSIdOY_YWrBsOI6w33ZrvQsNVXUpJ-ME',
    appId: '1:576116319513:android:b6f39730a95a41c8345188',
    messagingSenderId: '576116319513',
    projectId: 'spotify-clone-d7b32',
    storageBucket: 'spotify-clone-d7b32.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDq9lBupW-UNimXqUGezBLtiZz3LeN3NNk',
    appId: '1:576116319513:ios:b2d2d6487d275862345188',
    messagingSenderId: '576116319513',
    projectId: 'spotify-clone-d7b32',
    storageBucket: 'spotify-clone-d7b32.appspot.com',
    iosBundleId: 'com.example.spotifyClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDq9lBupW-UNimXqUGezBLtiZz3LeN3NNk',
    appId: '1:576116319513:ios:5e0f9c20fc6006ba345188',
    messagingSenderId: '576116319513',
    projectId: 'spotify-clone-d7b32',
    storageBucket: 'spotify-clone-d7b32.appspot.com',
    iosBundleId: 'com.example.spotifyClone.RunnerTests',
  );
}