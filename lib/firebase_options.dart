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
    apiKey: 'AIzaSyA8M08AGcN0VMGRZ9-o8zTqyWiR3Rt1dGI',
    appId: '1:673186650046:web:74fb74d836187001c9cbef',
    messagingSenderId: '673186650046',
    projectId: 'insta-x-13631',
    authDomain: 'insta-x-13631.firebaseapp.com',
    storageBucket: 'insta-x-13631.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAulFDGZHjnB5UbKLU47g2Vbw7xSRYPfQQ',
    appId: '1:673186650046:android:e8d30b4025ae92eac9cbef',
    messagingSenderId: '673186650046',
    projectId: 'insta-x-13631',
    storageBucket: 'insta-x-13631.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0tWk80S7aPPQt3cl0UOcrmHUVZvTlVgA',
    appId: '1:673186650046:ios:4a9b5503f9d4dd72c9cbef',
    messagingSenderId: '673186650046',
    projectId: 'insta-x-13631',
    storageBucket: 'insta-x-13631.appspot.com',
    iosBundleId: 'com.example.instax',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0tWk80S7aPPQt3cl0UOcrmHUVZvTlVgA',
    appId: '1:673186650046:ios:4a9b5503f9d4dd72c9cbef',
    messagingSenderId: '673186650046',
    projectId: 'insta-x-13631',
    storageBucket: 'insta-x-13631.appspot.com',
    iosBundleId: 'com.example.instax',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA8M08AGcN0VMGRZ9-o8zTqyWiR3Rt1dGI',
    appId: '1:673186650046:web:00e2eb2cb9d8166bc9cbef',
    messagingSenderId: '673186650046',
    projectId: 'insta-x-13631',
    authDomain: 'insta-x-13631.firebaseapp.com',
    storageBucket: 'insta-x-13631.appspot.com',
  );
}