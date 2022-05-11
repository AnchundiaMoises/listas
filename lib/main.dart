import 'package:flutter/material.dart';
import 'model/characters_data.dart';
import 'widgets/character_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartoooooonery'),
        centerTitle: true,
        //titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: characters
            .map((character) => CharacterWidget(character: character))
            .toList(),
      ),
    );
  }
}
