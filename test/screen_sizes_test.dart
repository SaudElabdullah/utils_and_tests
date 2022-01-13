//This class helps you tests widgets with as many screens as you wish.
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:utils_and_tests/main.dart';

const iphone12Pro = ScreenSize('Iphone 12 Pro', 390, 844, 3);
const iphone12ProMax = ScreenSize('Iphone 12 Pro Max', 428, 926, 3);

final testedPhones = <ScreenSize>{iphone12Pro, iphone12ProMax};

class ScreenSize {
  final String name;
  final double width, height, pixelDensity;

  const ScreenSize(this.name, this.width, this.height, this.pixelDensity);

  @override
  String toString() {
    return 'ScreenSize{name: $name}';
  }
}

extension ScreenSizeManager on WidgetTester {
  Future<void> setScreenSize(ScreenSize screenSize) {
    return _setScreenSize(
      width: screenSize.width,
      height: screenSize.height,
      pixelDensity: screenSize.pixelDensity,
    );
  }

  Future<void> _setScreenSize(
      {double width = 540,
      double height = 960,
      double pixelDensity = 1.0}) async {
    final size = Size(width, height);
    await binding.setSurfaceSize(size);
    binding.window.physicalSizeTestValue = size;
    binding.window.devicePixelRatioTestValue = pixelDensity;
  }
}

void main() {
  final screenSizeVariants = ValueVariant<ScreenSize>(testedPhones);

  testWidgets('click on button => tests the sizes', (
    WidgetTester tester,
  ) async {
    await tester.setScreenSize(screenSizeVariants.currentValue!);
    await tester.pumpWidget(const MyApp());
    expect(find.byKey(const Key('test')), findsOneWidget);
  }, variant: screenSizeVariants);
}
