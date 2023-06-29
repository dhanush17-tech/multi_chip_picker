# MultipleFilterChipPicker

A Flutter widget that allows selecting multiple filter chips.

## Screenshot

![MultipleFilterChipPicker](https://github.com/dhanush17-tech/multi_chip_picker/blob/main/Screenshot_20230510_001257.jpg)

## Features

- Select and deselect filter chips.
- Callback when the selection of filter chips changes.
- Customizable appearance and behavior of filter chips.

## Usage

1. Add the `MultipleFilterChipPicker` widget to your Flutter app.
2. Provide a list of `FilterChipData` objects to the `filterChips` parameter. Each `FilterChipData` object represents a filter chip with a label and an initial selection state.
3. Specify the `onChanged` callback to receive the updated list of selected filter chips whenever the selection changes.
4. Customize the appearance and behavior of the filter chips using the available parameters.

```dart
MultipleFilterChipPicker(
  filterChips: [
    FilterChipData('Filter 1', false),
    FilterChipData('Filter 2', true),
    FilterChipData('Filter 3', false),
  ],
  onChanged: (selectedFilterChips) {
    // Handle the updated list of selected filter chips
  },
  // Customize other parameters as needed
)
```

Customization

The MultipleFilterChipPicker widget provides several parameters to customize the appearance and behavior of the filter chips:

    avatar: Avatar widget for the filter chips.
    labelStyle: Style for the filter chip labels.
    pressElevation: Elevation when a filter chip is pressed.
    disabledColor: Color for disabled filter chips.
    selectedColor: Color for selected filter chips.
    tooltip: Tooltip for filter chips.
    avatarBorder: Border shape for filter chip avatars.
    side: Border side for filter chips.
    clipBehavior: Clip behavior for filter chips.
    focusNode: Focus node for filter chips.
    autofocus: Whether the filter chips should autofocus.
    backgroundColor: Background color for filter chips.
    labelPadding: Padding for filter chip labels.
    visualDensity: Visual density for filter chips.
    surfaceTintColor: Surface tint color for filter chips.
    iconTheme: Icon theme for filter chips.
    selectedShadowColor: Shadow color for selected filter chips.
    showCheckmark: Whether to show a checkmark for selected filter chips.
    checkmarkColor: Color for the checkmark on selected filter chips.
    padding: Padding for filter chips.
    shape: Shape for filter chips.
    isSelectedShadowColor: Whether to use shadow color for selected filter chips.
    filterChipSpacing: Spacing between each filter chip.

Feel free to adjust these parameters according to your specific requirements.
Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.

## License

This project is licensed under the MIT License.

 
