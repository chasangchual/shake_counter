import 'package:logger/web.dart';

class Log {
  static final Logger _simpleLogger = Logger(printer: SimplePrinter(colors: false, printTime: false));
  static final Logger _prettyLogger = Logger(printer: PrettyPrinter(colors: false));

  static Logger get s => _simpleLogger;
  static Logger get p => _prettyLogger;
}
