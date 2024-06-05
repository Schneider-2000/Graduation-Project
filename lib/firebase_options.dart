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
    apiKey: 'AIzaSyCL6HQrLMQdqfapGiT9AXFSa38jAL1Jkb4',
    appId: '1:872075333575:web:d6f0b78f408ed6d67053e2',
    messagingSenderId: '872075333575',
    projectId: 'project12-efe5b',
    authDomain: 'project12-efe5b.firebaseapp.com',
    storageBucket: 'project12-efe5b.appspot.com',
    measurementId: 'G-YYZLR4WRL3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVUMfvSM_ZBvaUXOF3Il1SE9MhcdMT678',
    appId: '1:872075333575:android:2381a05df71b287a7053e2',
    messagingSenderId: '872075333575',
    projectId: 'project12-efe5b',
    storageBucket: 'project12-efe5b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuWmQot852yY30o9yjMbrvGoAjifizDPI',
    appId: '1:872075333575:ios:1825bce9ff5a0c7e7053e2',
    messagingSenderId: '872075333575',
    projectId: 'project12-efe5b',
    storageBucket: 'project12-efe5b.appspot.com',
    iosBundleId: 'com.example.project12',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuWmQot852yY30o9yjMbrvGoAjifizDPI',
    appId: '1:872075333575:ios:1825bce9ff5a0c7e7053e2',
    messagingSenderId: '872075333575',
    projectId: 'project12-efe5b',
    storageBucket: 'project12-efe5b.appspot.com',
    iosBundleId: 'com.example.project12',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCL6HQrLMQdqfapGiT9AXFSa38jAL1Jkb4',
    appId: '1:872075333575:web:25aa9b7a128f762b7053e2',
    messagingSenderId: '872075333575',
    projectId: 'project12-efe5b',
    authDomain: 'project12-efe5b.firebaseapp.com',
    storageBucket: 'project12-efe5b.appspot.com',
    measurementId: 'G-W461H0X9DR',
  );
}