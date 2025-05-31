import 'package:intl/intl.dart';

String toDate(DateTime data) {
  return DateFormat('dd/MM/yyyy').format(data);
}

String numberToMonth(int month) {
    if (month < 1 || month > 12) {
    throw ArgumentError('O número do mês deve estar entre 1 e 12.');
  }

  final data = DateTime(2020, month);
  return capitalize(DateFormat.MMMM('pt_BR').format(data));
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);