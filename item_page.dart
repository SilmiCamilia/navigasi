import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';
import 'package:navigasi/pages/home_page.dart';

@override
Widget build(BuildContext context) {
  final itemArgs = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

  if (itemArgs == null) {
    // Handle the case when arguments are null, for example, show an error message or navigate back.
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text("Error: Item details not available."),
      ),
    );
  }

  print(itemArgs["name"]);

  return Scaffold(
    appBar: AppBar(
      title: Text("Items"),
      backgroundColor: Colors.purple,
      foregroundColor: Colors.black,
    ),
    body: Container(
      child: Card(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Text(itemArgs["name"]),
            Text(itemArgs["price"].toString()),
            Text(itemArgs["description"]),
            Text(itemArgs["imagePath"]),
          ],
        ),
      ),
    ),
  );
}

