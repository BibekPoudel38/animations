import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<int> seats = [for (int i = 0; i < 60; i++) 0];
  // 0 => available => grey
  // 1 => seat already booked => green
  // 2 => seat reserved => brown
  // 3 => selected seats => yellow
  // 4 => seats not available => transparent
  @override
  void onInit() {
    super.onInit();
    seats[18] = 1;
    seats[7] = 1;
    seats[8] = 1;
    seats[12] = 2;
    seats[8] = 4;
  }

  selectSeat(int index) {
    if (seats[index] == 0) {
      seats[index] = 3;
      update();
    } else if (seats[index] == 3) {
      seats[index] = 0;
      update();
    }
  }

  Color getColor(int value) {
    switch (value) {
      case 0:
        return Colors.grey;
      case 1:
        return Colors.green;
      case 2:
        return Colors.brown;
      case 3:
        return Colors.yellow;
      case 4:
        return Colors.transparent;
      default:
        return Colors.grey;
    }
  }
}
