import 'package:url_launcher/url_launcher.dart';

class Launcher {
  static Future<void> LaunchInBrowser(Uri url) async {
    if (await launchUrl(url, mode: LaunchMode.externalApplication)) {
    } else {
      throw 'Failed$url';
    }
  }
}
