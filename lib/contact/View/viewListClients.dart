import 'package:flutter/material.dart';
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
      backgroundColor: const Color(0xdfe6ed),
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
                icon: Icon(
                  Icons.more_horiz_outlined,
                ),
                onPressed: () {
                  //GetPage(name: 'ModifyClient',page: ),
                },
              ),
            ],
          ),
          Text(
            client.tel,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
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
