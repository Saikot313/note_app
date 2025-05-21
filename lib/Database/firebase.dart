
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAr9VwFgKK-RO3XCBt-5A_wCRkA1O-pWMo',
    appId: '1:463053866241:web:9054a41b5a4a27935d4700',
    messagingSenderId: '463053866241',
    projectId: 'fir-4226c',
    authDomain: 'fir-4226c.firebaseapp.com',
    storageBucket: 'fir-4226c.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGVBE5-595xEzihc0CnJ3ca6JurchWapw',
    appId: '1:463053866241:android:977c8826fb6a58f55d4700',
    messagingSenderId: '463053866241',
    projectId: 'fir-4226c',
    storageBucket: 'fir-4226c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkvvro-biT8g4p9uF_944U_wbSdE-XpgE',
    appId: '1:463053866241:ios:efe8af63566e4efc5d4700',
    messagingSenderId: '463053866241',
    projectId: 'fir-4226c',
    storageBucket: 'fir-4226c.firebasestorage.app',
    iosBundleId: 'com.example.demo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkvvro-biT8g4p9uF_944U_wbSdE-XpgE',
    appId: '1:463053866241:ios:efe8af63566e4efc5d4700',
    messagingSenderId: '463053866241',
    projectId: 'fir-4226c',
    storageBucket: 'fir-4226c.firebasestorage.app',
    iosBundleId: 'com.example.demo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAr9VwFgKK-RO3XCBt-5A_wCRkA1O-pWMo',
    appId: '1:463053866241:web:1733da85c62a837f5d4700',
    messagingSenderId: '463053866241',
    projectId: 'fir-4226c',
    authDomain: 'fir-4226c.firebaseapp.com',
    storageBucket: 'fir-4226c.firebasestorage.app',
  );
}