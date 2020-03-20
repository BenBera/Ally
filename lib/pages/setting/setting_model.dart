import 'package:flutter/material.dart';
class SettingsModel {
  String _name;
  Color _color;
  IconData _icon;

  SettingsModel(this._name, this._color, this._icon,);
  String get name => _name;
  IconData get icon => _icon;

  Color get color => _color;
}