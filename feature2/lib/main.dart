import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String? selectedItem;

  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dropdowon selection list'),
      ),
      body: Center(
        child: Column(
          children: [
            
            DropdownButton<String>(

              value: selectedItem,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedItem = newValue; 
                });
              },
            ),
            
            SizedBox(height: 20),

            
            if (selectedItem != null)
              Text(
                'Selected Item: $selectedItem',
                style: TextStyle(fontSize: 20),
              ),
           
            if (selectedItem == null)
              Text(
                'No item selected',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}