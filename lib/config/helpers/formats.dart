import 'package:intl/intl.dart';


class Formats{

  static String formatsReadableNumber(double number){
    final  formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formatterNumber;
  }



}