import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzREid4877Gelj4m0eAwnBQTop6l2wq54UQw&usqp=CAU'),
              ),
              const Text(
                'onyedire jesse',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[100]),
              ),
              SizedBox(
                width: 250,
                height: 20,
                child: Divider(
                  height: 15,
                  color: Colors.teal[400],
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        '+234-8070451885',
                        style: TextStyle(fontSize: 16, color: Colors.teal[900]),
                      ),
                    )),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        'onyedirejesse@gmail.com',
                        style: TextStyle(color: Colors.teal[900], fontSize: 16),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
