import 'package:flutter/material.dart';

class AuswahlFehlerDCB extends StatefulWidget {
  const AuswahlFehlerDCB({Key? key}) : super(key: key);

  @override
  State<AuswahlFehlerDCB> createState() => _AuswahlFehlerDCBState();
}

class _AuswahlFehlerDCBState extends State<AuswahlFehlerDCB> {
  bool switched80 = false,
      switched40 = false,
      switchedint = false,
      switchedHV = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Fehlerauswahl PDU')),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            SwitchListTile(
                tileColor: Colors.white,
                title: const Text('Widerstand 80k'),
                value: switched80,
                onChanged: (bool value80) {
                  if (switched40 == false) {
                    setState(() => switched80 = value80);
                  }
                }),
            SwitchListTile(
                tileColor: Colors.white,
                title: const Text('Widerstand 40k'),
                value: switched40,
                onChanged: (bool value40) {
                  if (switched80 == false) {
                    setState(() => switched40 = value40);
                  }
                }),
            SwitchListTile(
                tileColor: Colors.white,
                title: const Text('Interlock'),
                value: switchedint,
                onChanged: (bool valueint) {
                  setState(() => switchedint = valueint);
                }),
          ],
        ));
  }
}
