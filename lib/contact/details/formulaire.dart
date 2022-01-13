import 'package:flutter/material.dart';

class Form extends StatelessWidget {
  const Form({Key? key}) : super(key: key);

  static const String _title = 'Jean-Paul Larue';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: FormClient(),
    );
  }
}

class FormClient extends StatelessWidget {
  const FormClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jean-Paul Larue'),
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
                  children: const <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nom',
                        ),
                      ),
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Prenom',
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Société',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Poste',
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
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '06 71 59 57 60',
                      prefixIcon: Icon(
                        Icons.phone_outlined,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '06 71 59 57 60',
                      prefixIcon: Icon(
                        Icons.smartphone_outlined,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '06 71 59 57 60',
                      prefixIcon: Icon(
                        Icons.print_outlined,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'jp.larue@laposte.net',
                      prefixIcon: Icon(
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
