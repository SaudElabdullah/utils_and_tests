import 'package:flutter/scheduler.dart';

class ModeDetection {
  var brightness = SchedulerBinding.instance!.window.platformBrightness;
  //example of usage.
  //bool isDarkMode = brightness == Brightness.dark;
  // You need to use this in the init method only.
}
