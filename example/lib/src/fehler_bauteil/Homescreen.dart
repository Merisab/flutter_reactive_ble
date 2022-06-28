import 'package:flutter/material.dart';
import 'AuswahlBauteil.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fahrzeugwahl')),
      body: ListView(padding: EdgeInsets.all(8), children: [
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AuswahlBauteil()));
            },
            child: Text('EQC')),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AuswahlBauteil()));
            },
            child: Text('VAN'))
      ]),
    );
  }
}
