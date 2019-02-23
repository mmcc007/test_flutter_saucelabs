import 'dart:async';
import 'dart:io' as io;
import 'package:file/memory.dart';
import 'package:flutter_tools/src/android/gradle.dart';
import 'package:flutter_tools/src/artifacts.dart';
import 'package:flutter_tools/src/base/file_system.dart';
import 'package:flutter_tools/src/build_info.dart';
import 'package:flutter_tools/src/cache.dart';
import 'package:flutter_tools/src/ios/xcodeproj.dart';
import 'package:flutter_tools/src/project.dart';
import 'package:platform/platform.dart';
import 'package:process/process.dart';

main() async {
  Map<String, String> envVars = io.Platform.environment;
  Cache.flutterRoot = envVars['FLUTTER_ROOT'];
  updateLocalProperties(
      project: await FlutterProject.current(), requireAndroidSdk: false);
}
