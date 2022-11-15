import 'package:batch_g/provider/flower_provider.dart';
import 'package:batch_g/screens/home_page.dart';
import 'package:batch_g/screens/image_view.dart';
import 'package:batch_g/repo/flower_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider<FlowerProvider>(create:
              (_)=>FlowerProvider()),
        ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}







