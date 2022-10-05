import 'package:flutter/material.dart';
import 'package:rick_and_morty_mobx/injection_conatiner.dart' as di;
import 'package:rick_and_morty_mobx/views/characters/layouts/home_view.dart';

void main() async {
  await di.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick and Morty with mobx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
