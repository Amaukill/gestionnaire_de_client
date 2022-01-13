import 'package:flutter/material.dart';
import 'package:gestionnaire_de_client/contact/details/formulaire.dart';
import 'package:gestionnaire_de_client/contact/model/client.dart';
import 'package:get/get.dart';

class ClientListView extends StatelessWidget {
  final RxList<Client> listClients;
  const ClientListView({Key? key, required this.listClients}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
        title: const Text(
          "Mon app",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: listClients.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: ClientView(
                    client: listClients[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            FormClient(),
          );
        },
        backgroundColor: Colors.red.shade800,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ClientView extends StatelessWidget {
  final Client client;
  const ClientView({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.fromLTRB(20, 5, 5, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                client.firstName + " " + client.lastName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_horiz_outlined,
                ),
                onPressed: () {
                  Get.to(
                    FormClient(),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.phone,
              ),
              Text(
                client.tel,
              ),
            ],
          ),
          Text(
            client.email,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
