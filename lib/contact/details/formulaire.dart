import 'package:flutter/material.dart';
import 'package:gestionnaire_de_client/contact/model/client.dart';

class FormClient extends StatelessWidget {
  final Client? client;

  const FormClient({Key? key, this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(client?.firstName ?? 'Nouveau client'),
        backgroundColor: Colors.grey,
        actions: const <Widget>[
          Icon(
            Icons.task_alt_outlined,
            color: Colors.green,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 700,
            height: 260,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: client?.lastName ?? "Nom",
                        ),
                      ),
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: client?.firstName ?? 'Prenom',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: client?.societe ?? 'Société',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: client?.poste ?? 'Poste',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 700,
            height: 260,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText:
                          client?.tel ?? 'Numéro de téléphone professionel ',
                      prefixIcon: const Icon(
                        Icons.phone_outlined,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: client?.tel ?? 'Numéro de téléphone',
                      prefixIcon: const Icon(
                        Icons.smartphone_outlined,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: client?.fax ?? 'Fax',
                      prefixIcon: const Icon(
                        Icons.print_outlined,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: client?.email ?? 'Email',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
