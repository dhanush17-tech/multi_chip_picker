import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'multi_chip_picker_platform_interface.dart';

/// An implementation of [MultiChipPickerPlatform] that uses method channels.
class MethodChannelMultiChipPicker extends MultiChipPickerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('multi_chip_picker');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
