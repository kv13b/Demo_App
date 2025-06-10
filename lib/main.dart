import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FilterChip Demo',
      debugShowCheckedModeBanner: false,
      home:  FilterChipDemo(),
    );
  }
}

class FilterChipDemo extends StatelessWidget {
  final List<String> _options = ['Flutter', 'APIs', 'Dart', 'http', 'Dio'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter Chips')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _options.map((label) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: FilterChip(
                  label: Text(label),
                  selected: false,
                  onSelected: null,
                  backgroundColor: Colors.grey[200],
                  disabledColor: Colors.grey[300],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
