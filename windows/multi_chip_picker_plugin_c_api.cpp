#include "include/multi_chip_picker/multi_chip_picker_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "multi_chip_picker_plugin.h"

void MultiChipPickerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  multi_chip_picker::MultiChipPickerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
