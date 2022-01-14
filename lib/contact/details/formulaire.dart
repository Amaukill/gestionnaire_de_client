import 'package:flutter/material.dart';
import 'package:gestionnaire_de_client/contact/View/ViewListClients.dart';
import 'package:gestionnaire_de_client/contact/model/client.dart';
import 'package:get/get.dart';

class FormClient extends StatelessWidget {
  final Client client;
  final RxList<Client> listClients;
  final String title;
  final _formKey = GlobalKey<FormState>();
  FormClient(
      {Key? key,
      required this.title,
      required this.client,
      required this.listClients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red.shade800,
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red.shade800,
            ),
            child: const Icon(
              Icons.task_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                listClients.add(client);
                Get.to(
                  ClientListView(
                    listClients: listClients,
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  width: 700,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Informations',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(
                                      fontSize: 12, height: 0.2),
                                  border: const OutlineInputBorder(),
                                  hintText: client.lastName,
                                ),
                                onSaved: (lastName) =>
                                    client.lastName = lastName ?? "",
                                validator: (String? value) {
                                  if (value != null &&
                                      value != "Nom" &&
                                      value != "") {
                                    client.lastName = value;
                                  } else {
                                    return 'Nom obligatoire';
                                  }
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(
                                      fontSize: 12, height: 0.2),
                                  border: const OutlineInputBorder(),
                                  hintText: client.firstName,
                                ),
                                onSaved: (firstName) =>
                                    client.lastName = firstName ?? "",
                                validator: (String? value) {
                                  if (value != null &&
                                      value != "Prénom" &&
                                      value != "") {
                                    client.firstName = value;
                                  } else {
                                    return 'Prénom obligatoire';
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: client.societe,
                            ),
                            onSaved: (societe) =>
                                client.societe = societe ?? "",
                            validator: (String? value) {
                              if (value != null && value != "Société") {
                                client.societe = value;
                              }
                              return null;
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: client.poste,
                            ),
                            onSaved: (poste) => client.poste = poste ?? "",
                            validator: (String? value) {
                              if (value != null && value != "Poste") {
                                client.poste = value;
                              }
                              return null;
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  width: 700,
                  height: 310,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Coordonnés',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: client.telPro,
                            prefixIcon: const Icon(
                              Icons.phone_outlined,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: client.tel,
                              prefixIcon: const Icon(
                                Icons.smartphone_outlined,
                              ),
                            ),
                            onSaved: (tel) => client.tel = tel ?? "",
                            validator: (String? value) {
                              if (value != null && value != "Téléphone") {
                                client.tel = value;
                              } else if (value != null &&
                                  value.contains(RegExp(r'[A-Z]'))) {
                                return "Le numéro de téléphone ne doit pas contenir de lettre";
                              } else {
                                return null;
                              }
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: client.fax,
                              prefixIcon: const Icon(
                                Icons.print_outlined,
                              ),
                            ),
                            onSaved: (telPro) => client.telPro = telPro ?? "",
                            validator: (String? value) {
                              if (value != null &&
                                  value != "Téléphone professionnel") {
                                client.telPro = value;
                              } else if (value != null &&
                                  value.contains(RegExp(r'[A-Z]'))) {
                                return "Le numéro de téléphone ne doit pas contenir de lettre";
                              }
                              return null;
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: client.email,
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                              ),
                            ),
                            onSaved: (email) => client.email = email ?? "",
                            validator: (String? value) {
                              if (value != null && value != "Email") {
                                client.email = value;
                              } else if (value != null &&
                                  !value.contains('@')) {
                                return "L'email doit contenir un @";
                              }
                              return null;
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
