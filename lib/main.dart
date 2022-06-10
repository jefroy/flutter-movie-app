import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// pages
import 'pages/splash_page.dart';
import 'pages/main_page.dart';

void main() {
  runApp(
      SplashPage(key: UniqueKey(), onInitializationComplete: () => runApp(
          ProviderScope(child: MyApp())
      )),
  );
}

class MyApp extends StatefulWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Demo App",
      initialRoute: 'home',
      routes: {
        'home': (BuildContext _context) => MainPage(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
