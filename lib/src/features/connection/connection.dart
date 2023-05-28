import 'dart:io';

import 'package:dev_utils/src/interfaces/i_connection.dart';

final class Connection implements IConnection {
  @override
  Future<(bool, String)> status() async {
    // Connected
    try {
      List<InternetAddress> result = await InternetAddress.lookup('example.com')
          .timeout(const Duration(seconds: 5));

      final bool isConnected =
          result.isNotEmpty && result[0].rawAddress.isNotEmpty;
      //
      return (isConnected, "Connected");

      // Not Connected
    } on SocketException catch (_) {
      return (false, "No Connection");
    }
  }
}
