import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.local_grocery_store, color: Colors.orange),
              title: Text('Produto ${index + 1}'),
              subtitle: Text('Descrição do Produto ${index + 1}'),
            ),
          );
        },
    );
  }
}
