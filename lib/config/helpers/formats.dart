import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Formats{

  static String FormatsReadableNumber(double number){
    final  formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formatterNumber;
  }



}