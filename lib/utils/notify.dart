import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notify {
  final isIconPlay = false.obs;

  void setIconPlay(bool value) {
    isIconPlay.value = value;
  }
}
