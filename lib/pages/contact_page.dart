import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  final String googleMapsUrl = 'https://www.google.com/maps?q=-26.3410451,-48.8225436';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Entre em Contato", style: Theme.of(context).textTheme.headlineLarge),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Nome'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Mensagem'),
            maxLines: 4,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implementar envio de contato
            },
            child: Text('Enviar'),
          ),
          SizedBox(height: 40),
          Text("Localização", style: Theme.of(context).textTheme.headlineLarge),
          SizedBox(height: 10),
          Container(
            height: 300, // Altura do mapa
            child: WebviewScaffold(
              url: googleMapsUrl,
              withJavascript: true,
              hidden: true,
              initialChild: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          SizedBox(height: 40),
          Text("Siga-nos", style: Theme.of(context).textTheme.headlineLarge),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.facebook),
                onPressed: () {
                  _launchURL('https://www.facebook.com/frutasexpressjlle/?locale=pt_BR');
                },
              ),
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                  _launchURL('https://www.instagram.com/frutasexpressjlle/');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir o link $url';
    }
  }
}
