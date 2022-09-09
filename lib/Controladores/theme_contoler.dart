import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ThemeControler{
  ValueNotifier<bool> isdark = ValueNotifier<bool>(false);

  void changeTheme(bool value){
    isdark.value = value;
  }
}