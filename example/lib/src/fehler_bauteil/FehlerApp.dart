import 'package:fehler_app/UI/Homescreen.dart';
import 'package:flutter/material.dart';
import 'Passwort.dart';
import 'package:fehler_app/Bluetooth/bluetooth.dart';
class FehlerApp extends StatefulWidget {
  const FehlerApp({Key? key}) : super(key: key);

  @override
  State<FehlerApp> createState() => _FehlerAppState();
}

class _FehlerAppState extends State<FehlerApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Homescreen(),
    );
  }
}
