import 'package:intl/intl.dart';

String getMonth(DateTime date) {
  return DateFormat.MMMM().format(date);
}
