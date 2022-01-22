import 'dart:io';

import 'package:image/image.dart';

///This is to create a thumbnail image by using the amazing image package.
Future<List<int>> createJpg(File file, int maxWidth, int quality) async {
  var bytes = await file.readAsBytes();
  Image? image = decodeImage(bytes);
  var thumbnail = copyResize(image!, width: maxWidth);
  return encodeJpg(thumbnail, quality: quality);
}
