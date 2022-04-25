import 'package:flutter/material.dart';
import '../package/text_field_template.dart';
import '../package/drawer_template.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({ Key? key }) : super(key: key);

  @override
  State<TemperaturePage> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature converter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        ),
      ),
      home:
      DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Temperature converter'),
          ),
          drawer: const DrawerTemplate(),
          body: FahrenheitPage(),
          ),
        ),
    );
  }
}

class FahrenheitPage extends StatefulWidget {
  const FahrenheitPage({ Key? key }) : super(key: key);

  @override
  State<FahrenheitPage> createState() => _FahrenheitPageState();
}

class _FahrenheitPageState extends State<FahrenheitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 100),
            child: Text(
              'fahrenheit to celcius'.toUpperCase(), 
              style: const TextStyle(
                  fontSize: 50, 
                  fontWeight: FontWeight.bold
                ),
              ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                TextFieldTemplate(title: 'Fahrenheit'),
                TextFieldTemplate(title: 'Celcius'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}