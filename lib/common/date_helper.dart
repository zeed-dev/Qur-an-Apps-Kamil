import 'package:intl/intl.dart';

class DateHelper {
  static String changeFormatIdToDateTimeFormat(DateTime date) {
    return DateFormat.yMMMMd().format(date);
  }
}
