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
    apiKey: 'AIzaSyCAuZvWcisQCVJNOvFDpIYxDn_3X83j-ok',
    appId: '1:370043333841:web:a7f61fd0b2709bd81f69f0',
    messagingSenderId: '370043333841',
    projectId: 'linktree-4cd14',
    authDomain: 'linktree-4cd14.firebaseapp.com',
    storageBucket: 'linktree-4cd14.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXQwCMfsFKjGYOHCYAtkjta3oBCstRMcs',
    appId: '1:370043333841:android:60a31b582f3a09811f69f0',
    messagingSenderId: '370043333841',
    projectId: 'linktree-4cd14',
    storageBucket: 'linktree-4cd14.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaVFtpSZ6s72mSjVMugpCG6p-RL7Vksuc',
    appId: '1:370043333841:ios:56901dfa72a264d21f69f0',
    messagingSenderId: '370043333841',
    projectId: 'linktree-4cd14',
    storageBucket: 'linktree-4cd14.appspot.com',
    androidClientId: '370043333841-8ndjeam9knngq8rlvft1fr0nvkl7j0bk.apps.googleusercontent.com',
    iosClientId: '370043333841-cpr35f6jsdqj6a2bt848ubjlosr1l6m0.apps.googleusercontent.com',
    iosBundleId: 'com.example.linktreeclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaVFtpSZ6s72mSjVMugpCG6p-RL7Vksuc',
    appId: '1:370043333841:ios:56901dfa72a264d21f69f0',
    messagingSenderId: '370043333841',
    projectId: 'linktree-4cd14',
    storageBucket: 'linktree-4cd14.appspot.com',
    androidClientId: '370043333841-8ndjeam9knngq8rlvft1fr0nvkl7j0bk.apps.googleusercontent.com',
    iosClientId: '370043333841-cpr35f6jsdqj6a2bt848ubjlosr1l6m0.apps.googleusercontent.com',
    iosBundleId: 'com.example.linktreeclone',
  );
}
