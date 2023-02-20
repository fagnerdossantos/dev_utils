import 'dart:io';

class ConnectionModel {
  // Check connection
  Future<bool> status() async {
    try {
      List<InternetAddress> result = await InternetAddress.lookup('example.com')
          .timeout(const Duration(seconds: 5));

      //
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
