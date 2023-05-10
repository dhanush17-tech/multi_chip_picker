#ifndef FLUTTER_PLUGIN_MULTI_CHIP_PICKER_PLUGIN_H_
#define FLUTTER_PLUGIN_MULTI_CHIP_PICKER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace multi_chip_picker {

class MultiChipPickerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MultiChipPickerPlugin();

  virtual ~MultiChipPickerPlugin();

  // Disallow copy and assign.
  MultiChipPickerPlugin(const MultiChipPickerPlugin&) = delete;
  MultiChipPickerPlugin& operator=(const MultiChipPickerPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace multi_chip_picker

#endif  // FLUTTER_PLUGIN_MULTI_CHIP_PICKER_PLUGIN_H_
