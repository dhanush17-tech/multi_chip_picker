import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'multi_chip_picker_method_channel.dart';

abstract class MultiChipPickerPlatform extends PlatformInterface {
  /// Constructs a MultiChipPickerPlatform.
  MultiChipPickerPlatform() : super(token: _token);

  static final Object _token = Object();

  static MultiChipPickerPlatform _instance = MethodChannelMultiChipPicker();

  /// The default instance of [MultiChipPickerPlatform] to use.
  ///
  /// Defaults to [MethodChannelMultiChipPicker].
  static MultiChipPickerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MultiChipPickerPlatform] when
  /// they register themselves.
  static set instance(MultiChipPickerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
