import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'connect.dart';
import 'home.dart';

void main() {
  runApp(ChangeNotifierProvider
    (
      create: (context) => connectingprovider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness:Provider.of<connectingprovider>(context,).b,
          primarySwatch: Colors.blue,
        ),
        home: home());
  }
}
