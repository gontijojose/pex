import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sobre a Frutas Express", style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20),
            Text("Breve descrição sobre a Frutas Express..."),
            SizedBox(height: 40),
            Text("Missão", style: Theme.of(context).textTheme.titleLarge),
            Text("Descrição da missão..."),
            SizedBox(height: 20),
            Text("Visão", style: Theme.of(context).textTheme.titleLarge),
            Text("Descrição da visão..."),
            SizedBox(height: 20),
            Text("Valores", style: Theme.of(context).textTheme.titleLarge),
            Text("Descrição dos valores..."),
          ],
        ),
    );
  }
}
