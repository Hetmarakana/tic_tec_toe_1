import 'package:flutter/material.dart';
import 'package:get/get.dart';

class controller extends GetxController {
  RxList l = List.filled(9, "").obs;
  RxString msg = "".obs;
  int cnt = 0;

  get(int i) {
    if (l[i] == "") {
      if (cnt % 2 == 0) {
        l[i] = "X";
        cnt++;
      } else {
        l[i] = "O";
        cnt++;
      }
    }
    win();
  }

  win() {
    if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X" ||
        l[0] == "X" && l[4] == "X" && l[8] == "X" ||
        l[2] == "X" && l[4] == "X" && l[6] == "X" ) {
      msg.value = "X is Win";
    }
    else if (l[0] == 'O' && l[1] == 'O' && l[2] == 'O' ||
        l[3] == 'O' && l[4] == 'O' && l[5] == 'O' ||
        l[6] == 'O' && l[7] == 'O' && l[8] == 'O' ||
        l[0] == 'O' && l[3] == 'O' && l[6] == 'O' ||
        l[1] == 'O' && l[4] == 'O' && l[7] == 'O' ||
        l[2] == 'O' && l[5] == 'O' && l[8] == 'O' ||
        l[0] == 'O' && l[4] == 'O' && l[8] == 'O' ||
        l[2] == 'O' && l[4] == 'O' && l[6] == 'O') {
      msg.value = "O is Win";
    }
  }
}
