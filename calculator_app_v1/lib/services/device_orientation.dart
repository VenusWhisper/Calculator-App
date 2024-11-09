import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart'; // I'm using this for locking device orientation to portrait (Up and Down)

void initializeApp(Function runAppCallback) {
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]
  ).then((_) {
    runAppCallback(); // This will run the provided runApp function
  });
}
