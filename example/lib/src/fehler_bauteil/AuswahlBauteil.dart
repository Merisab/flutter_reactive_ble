import 'package:flutter/material.dart';
import 'AuswahlFehlerDCB.dart';
import 'AuswahlFehlerPDU.dart';

class AuswahlBauteil extends StatefulWidget {
  const AuswahlBauteil({Key? key}) : super(key: key);

  @override
  State<AuswahlBauteil> createState() => _AuswahlBauteilState();
}

class _AuswahlBauteilState extends State<AuswahlBauteil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Bauteilauswahl')),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AuswahlFehlerDCB()));
                },
                child: Text('DCB')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AuswahlFehlerPDU()));
                },
                child: Text('PDU'))
          ],
        ));
  }
}
