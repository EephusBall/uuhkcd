// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:external_app_launcher/external_app_launcher.dart';

Future launchapp(String? packagename) async {
  // Add your function code here!
  await LaunchApp.openApp(androidPackageName: packagename, openStore: false);
}
