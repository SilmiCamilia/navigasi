import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';

class HomePage extends StatelessWidget {
  
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, description: 'sugarrr, yes pleasee', imagePath: 'gulaa.jpg'),
    Item(name: 'jeruk', price: 2000, description: 'juniggur ft. bunyi hujan', imagePath: 'jeruk.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tika imoet'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8), 
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            var itemss = {
              "name": item.name,
              "price": item.price,
              "description": item.description,
              "image":item.imagePath
            };
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/item', arguments: itemss);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(children: [
                    Expanded(child: Text(item.imagePath)),
                    Expanded(child: Text(item.name)),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                        ),
                      ),
                    Expanded(
                      child: 
                      Text(item.description, 
                      textAlign: TextAlign.end,
                      )),
                  ],)
                ),
               ),
            );
          },
        ),
      ),
      );
  }
}