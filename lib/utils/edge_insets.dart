import 'package:flutter/material.dart';

import 'size_config.dart';

///Use this utility with sizeConfig class: it depend on it.
///Just pass the a double to the method and it will return [EdgeInsets.symmetric()]
EdgeInsets symmetricInsets({double horizontal = 0, double vertical = 0}) {
  return EdgeInsets.symmetric(
    horizontal: SizeConfig.heightMultiplier! * horizontal,
    vertical: SizeConfig.heightMultiplier! * vertical,
  );
}
