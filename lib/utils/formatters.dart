import 'package:intl/intl.dart';

String toDate(DateTime data) {
  return DateFormat('dd/MM/yyyy').format(data);
}
