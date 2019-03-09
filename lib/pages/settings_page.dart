import 'dart:async';

import "package:flutter/material.dart";

import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_colorpicker/material_picker.dart';
import 'package:flutter_colorpicker/block_picker.dart';
import 'package:flutter_colorpicker/utils.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  Color currentColor = const Color(0xff443a49);

  void changeColor(Color color) => setState(() => currentColor = color);
  void changeColorAndPopout(Color color) => setState(() {
    currentColor = color;
    Timer(const Duration(milliseconds: 500),
            () => Navigator.of(context).pop());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Einstellungen"),
      ),
      body: Card(
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Theme-Farbe auswählen'),
                  content: SingleChildScrollView(
                    child: BlockPicker(
                      pickerColor: currentColor,
                      onColorChanged: changeColor,
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Theme-Farbe'),
          color: currentColor,
          textColor: useWhiteForeground(currentColor)
              ? const Color(0xffffffff)
              : const Color(0xff000000),
        ),
      ),
    );
  }
}