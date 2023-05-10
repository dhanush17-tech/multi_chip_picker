import 'package:flutter_test/flutter_test.dart';
import 'package:multi_chip_picker/multi_chip_picker.dart';
import 'package:multi_chip_picker/multi_chip_picker_platform_interface.dart';
import 'package:multi_chip_picker/multi_chip_picker_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMultiChipPickerPlatform
    with MockPlatformInterfaceMixin
    implements MultiChipPickerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MultiChipPickerPlatform initialPlatform = MultiChipPickerPlatform.instance;

  test('$MethodChannelMultiChipPicker is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMultiChipPicker>());
  });

  test('getPlatformVersion', () async {
    MultiChipPicker multiChipPickerPlugin = MultiChipPicker(filterChips: const [], onChanged: (data){});
    MockMultiChipPickerPlatform fakePlatform = MockMultiChipPickerPlatform();
    MultiChipPickerPlatform.instance = fakePlatform;

    expect(await multiChipPickerPlugin.getPlatformVersion(), '42');
  });
}
