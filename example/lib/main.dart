import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_chip_picker/multi_chip_picker.dart';

void main() {
  runApp(FilterChipPickerApp());
}

class FilterChipPickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Filter Chip Picker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Choose your flavour!",
                style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 0, 134, 243),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              MultiChipPicker(
                filterChips: [
                  FilterChipData("Chocolate", false),
                  FilterChipData("Vanilla", false),
                  FilterChipData("Cotton ", false),
                  FilterChipData("Pralines & Cream", false),
                  FilterChipData("Strawberry Cheesecake", false),
                ],
                onChanged: (newValue) {
                  print(newValue);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
