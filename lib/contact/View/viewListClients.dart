import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestionnaire_de_client/contact/Model/client.dart';
import 'package:get/get.dart';

class ClientListView extends StatelessWidget {
  final RxList<Client> listClients;
  const ClientListView({Key? key, required this.listClients}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        centerTitle: true,
        title: Text("Mon app"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: listClients.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: ClientView(
                    nom: listClients[index].firstName +
                        " " +
                        listClients[index].lastName,
                    numTel: listClients[index].tel,
                    email: listClients[index].email,
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
  final String nom;
  final String numTel;
  final String email;
  const ClientView(
      {Key? key, required this.nom, required this.numTel, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      padding: const EdgeInsets.fromLTRB(20, 5, 5, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            nom,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            numTel.toString(),
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          Text(
            email,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
