// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:crypto/crypto.dart';
import 'package:typed_data/typed_data.dart';

Future<String> encryptSha256Action(
  String? companyid,
  String? password,
) async {
  // two parameter plus encrypt sha256
  if (companyid == null || password == null) {
    throw Exception('Company ID and password cannot be null');
  }

  final bytes = Uint8List.fromList('$companyid$password'.codeUnits);
  final digest = await sha256.convert(bytes);

  return digest.toString();
}
