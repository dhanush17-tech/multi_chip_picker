import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:multi_chip_picker/multi_chip_picker_method_channel.dart';

void main() {
  MethodChannelMultiChipPicker platform = MethodChannelMultiChipPicker();
  const MethodChannel channel = MethodChannel('multi_chip_picker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
