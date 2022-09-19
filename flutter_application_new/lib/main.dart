import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_new/pages/HomePage.dart';
import 'package:flutter_application_new/pages/MoviePage.dart';
import 'package:flutter_application_new/pages/MovieListsPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  void initState(){
    // To hide status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState(); 
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(238, 14, 23, 42),
      ),
      routes: {
        "/" : (context) => HomePage(),
        "MovieListsPage":(context) => MovieListsPage(),
        "MoviePage":(context) => MoviePage(),
      },
    );
  }
}